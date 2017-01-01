using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using RecipeMvvmPattern.View;
using RecipeMvvmPattern.ViewModel;
using RecipeMvvmPattern.Model;
using System.Collections.ObjectModel;
using System.Windows.Documents;

namespace RecipeMvvmPattern
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        public App()
        {            
            var mw = new MainWindowView { DataContext = new ViewModel.MainViewModel() };
            mw.Show();
        }
    }
}
