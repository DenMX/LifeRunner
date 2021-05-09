using LifeRunner.Commands;
using LifeRunner.Model.DataBase;
using LifeRunner.Model.DataBase.Tables;
using System;
using System.Linq;
using System.Collections.ObjectModel;

namespace LifeRunner.ViewModel
{
    class CalendarViewModel : BaseViewModel
    {
        public ObservableCollection<CalendarDay> Days { get; set; }

        private MainWindowViewModel MainModel;
        public CalendarViewModel(MainWindowViewModel viewmodel)
        {
            Days = new ObservableCollection<CalendarDay>();
            MainModel = viewmodel;
            for(int i = 0; i<17; i++)
            {
                Days.Add(new CalendarDay(DateTime.Today + TimeSpan.FromDays(i)));
            }
            TotalTasksCount = DataManager.db.Tasks.Where(t => !t.IsCompleted).Count();
            CompletedTasks = DataManager.db.Tasks.Where(t => t.IsCompleted).Count();
        }

        private Work selectedItem;
        public Work SelectedItem
        {
            get { return selectedItem; }
            set
            {
                if (selectedItem != value) selectedItem = value;
                OnPropertyChanged("SelectedItem");
            }
        }

        private int totalTasksCount;
        public int TotalTasksCount
        {
            get { return totalTasksCount; }
            set
            {
                totalTasksCount = value;
                OnPropertyChanged("TotalTasksCount");
            }
        }

        private int completedTasks;
        public int CompletedTasks
        {
            get { return completedTasks; }
            set
            {
                completedTasks = value;
                OnPropertyChanged("completedTasks");
            }
        }

        #region commands
        private RelayCommand editCommand;
        public RelayCommand EditCommand
        {
            get {
                return editCommand ??
                  (editCommand = new RelayCommand(obj =>
                  {
                      MainModel.SelectedViewModel = new TaskViewModel(SelectedItem, MainModel);
                  },
                  (obj) => SelectedItem != null));
            }
        }

        private RelayCommand cancelCommand;
        public RelayCommand CancelCommand
        {
            get
            {
                return cancelCommand ??
                    (cancelCommand = new RelayCommand(obj =>
                    {
                        SelectedItem.DeleteCommand.Execute(null);
                    },
                    (obj) => SelectedItem != null));
            }
        }

        #endregion
    }
}
