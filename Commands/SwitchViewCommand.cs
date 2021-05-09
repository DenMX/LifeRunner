using LifeRunner.ViewModel;
using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Input;

namespace LifeRunner.Commands
{
    class SwitchViewCommand : ICommand
    {

        private MainWindowViewModel viewModel;

        public SwitchViewCommand(MainWindowViewModel viewModel)
        {
            this.viewModel = viewModel;
        }
        public event EventHandler CanExecuteChanged;

        public bool CanExecute(object parameter)
        {
            return true;
        }

        public void Execute(object parameter)
        {
            switch (parameter.ToString())
            {
                case "Tasks":
                    viewModel.SelectedViewModel = new TasksViewModel(viewModel);
                    break;
                case "Projects":
                    viewModel.SelectedViewModel = new ProjectsViewModel(viewModel);
                    break;
                case "NewTask":
                    viewModel.SelectedViewModel = new TaskViewModel(viewModel);
                    break;
                case "NewProject":
                    viewModel.SelectedViewModel = new ProjectViewModel(viewModel);
                    break;
                case "Calendar":
                    viewModel.SelectedViewModel = new CalendarViewModel(viewModel);
                    break;
                case "AddView":
                    viewModel.SelectedViewModel = new AdditionalViewModel(viewModel);
                    break;
                default:
                    break;
                  
            }
        }
    }
}
