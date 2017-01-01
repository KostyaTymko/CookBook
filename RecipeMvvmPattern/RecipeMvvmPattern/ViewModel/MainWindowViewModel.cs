using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RecipeMvvmPattern.Model;
using System.Collections.ObjectModel;
using System.Windows;
using RecipeMvvmPattern.View;
//using RecipeMvvmPattern.View.MainWindowView;
using System.Windows.Input;


using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;

using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;



namespace RecipeMvvmPattern.ViewModel
{
    class MainViewModel
    {
        public ObservableCollection<Recipe> Recipes { get; set; }
        private ObservableCollection<FullRecipe> fullRecipes;
        private Logic _logic = new Logic();

        public ObservableCollection<FullRecipe> FullRecipes 
        {
            get { return fullRecipes; }
            set
            {
                fullRecipes = value;
            }
        }

        public ICommand AddButtonCommand { get; set; }
        private void AddRecipeMethod()
        {
            MessageBox.Show("Тут в будущем будем добавлять рецепт ;) ");
        }

        private CheckCommand newCheckCommand;
        public ICommand NewCheckCommand
        {
            get
            {
                if (newCheckCommand == null)
                {
                    newCheckCommand = new CheckCommand(NewCheck);
                }
                return newCheckCommand;
            }
        }
        private void NewCheck(bool param)
        {
         //   MessageBox.Show("result - " + param);
            string skinDictPath = "Skins/GreenStyle.xaml";
            if (param == true) skinDictPath = "Skins/RedStyle.xaml";
            Uri skinDictionaryUri = new Uri(skinDictPath, UriKind.Relative);

            ResourceDictionary skinDict = Application.LoadComponent(skinDictionaryUri) as ResourceDictionary;
            Collection<ResourceDictionary> mergedDicts = MergedDicts.mergeddicts;

            if (mergedDicts.Count > 0)
                mergedDicts.Clear();
            mergedDicts.Add(skinDict);
        }

        public MainViewModel()
        {
            AddButtonCommand = new Command(arg => AddRecipeMethod());
            _logic.OpenConnection();
            if (_logic.OpenConnection()) { MessageBox.Show("Получилось открыть соединение ;)"); }
            else
            {
                MessageBox.Show("Не получилось открыть соединение");
                Environment.Exit(0);
            }

            fullRecipes = new ObservableCollection<FullRecipe>();
            Recipes = _logic.SelectAll();

            for (int i = 0; i < Recipes.Count; i++)
            {
                FullRecipe frecipe = new FullRecipe();
                frecipe.Recipe = Recipes[i];
                frecipe.RecipeIngredients = _logic.SelectIngredients(i+1);
               fullRecipes.Add(frecipe);
            }

        }
    }
}
