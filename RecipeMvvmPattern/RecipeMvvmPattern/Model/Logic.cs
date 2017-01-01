using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RecipeMvvmPattern.Model
{
    class Logic
    {
        private SqlConnection _connection;
        public SqlConnection Connection { get { return _connection; } }

        public bool OpenConnection()
        {
            try
            {
                _connection = new SqlConnection(
                    "Server=(local);Database=Cookbook;Integrated Security=true;");
                _connection.Open();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool CloseConnection()
        {
            try
            {
                if (_connection != null) _connection.Close();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public ObservableCollection<Recipe> SelectAll()
        {
            try
            {
                SqlCommand command = new SqlCommand();
                command.Connection = _connection;
                command.CommandText = "SELECT * FROM Recipe";
                SqlDataReader reader = command.ExecuteReader();
                ObservableCollection<Recipe> Recipes = new ObservableCollection<Recipe>();
                while (reader.Read())
                {
                    Recipe recipe = new Recipe();
                    recipe.Id = Convert.ToInt32(reader["Id"]);
                    recipe.Title = reader["Title"].ToString();
                    recipe.ShortTitle = reader["ShortTitle"].ToString();
                    recipe.Content = reader["Content"].ToString();
                    recipe.Path = reader["Path"].ToString();


                    Recipes.Add(recipe);
                }
                reader.Close();
                return Recipes;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public ObservableCollection<Ingredient> SelectIngredients(int f)
        {
            try
            {
                SqlCommand command = new SqlCommand();
                command.Connection = _connection;
                command.CommandText = "Select  i.Name AS Name, ri.Quantity AS Quantity from Recipe r JOIN RecipeIngredients ri on ri.Id_recipe=r.Id JOIN Ingredients i on i.Id=ri.Id_ingredients WHERE r.Id=" + f.ToString();
                SqlDataReader reader = command.ExecuteReader();
                ObservableCollection<Ingredient> Ingredients = new ObservableCollection<Ingredient>();
                while (reader.Read())
                {
                    Ingredient ingredient = new Ingredient();

                    ingredient.Name ="* "+ reader["Name"].ToString();
                    ingredient.Quantity = reader["Quantity"].ToString();
                    Ingredients.Add(ingredient);
                }
                reader.Close();
                return Ingredients;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public int InsertRecipe(string title, string shorttitle, string content, string path)
        {
            try
            {
                SqlCommand command = new SqlCommand();
                command.Connection = _connection;
                command.CommandText = "INSERT INTO Recipe (Title, ShortTitle, Content, Path)" +
                                      "VALUES (@Title, @ShortTitle, @Content, @Path)";
                command.Parameters.AddWithValue("Title", title);
                command.Parameters.AddWithValue("ShortTitle", shorttitle);
                command.Parameters.AddWithValue("Content", content);
                command.Parameters.AddWithValue("Path", path);
                int res = command.ExecuteNonQuery();
                return res;
            }
            catch (Exception e)
            {
                throw e;
            }
        }



    }
}
