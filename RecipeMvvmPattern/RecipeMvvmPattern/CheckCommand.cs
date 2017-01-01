using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace RecipeMvvmPattern
{
    public class CheckCommand : ICommand
    {
        #region Constructor

        public CheckCommand(Action<bool> action)
        {
            ExecuteDelegate = action;
        }

        #endregion


        #region Properties

        public Func<bool> CanExecuteDelegate { get; set; }
        public Action<bool> ExecuteDelegate { get; set; }

        #endregion


        #region ICommand Members

        public bool CanExecute(object parameter)
        {
            if (CanExecuteDelegate != null)
            {
                return CanExecuteDelegate();
            }
            return true;
        }

        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        public void Execute(object parameter)
        {
            if (ExecuteDelegate != null)
            {
                ExecuteDelegate(Convert.ToBoolean(parameter));
            }
        }

        #endregion
    }
}
