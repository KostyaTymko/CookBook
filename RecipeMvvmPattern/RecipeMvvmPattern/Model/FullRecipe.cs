using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RecipeMvvmPattern.Model
{
    class FullRecipe
    {
        private Recipe recipe;
        private ObservableCollection<Ingredient> recipeIngredients;

        public FullRecipe()
        {

        }

        public FullRecipe(Recipe recipe, ObservableCollection<Ingredient> Ingredients)
        {
            Recipe = recipe;
            RecipeIngredients = Ingredients;
        }

        public Recipe Recipe
        {
            get { return recipe; }
            set
            {
                recipe = value;
                OnPropertyChanged("FRecipe");
            }
        }

        public ObservableCollection<Ingredient> RecipeIngredients
        {
            get { return recipeIngredients; }
            set
            {
                recipeIngredients = value;
                OnPropertyChanged("RecipeIngredients");
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
    }
}
