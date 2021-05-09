using LifeRunner.Commands;
using LifeRunner.Model;
using LifeRunner.Model.DataBase;
using LifeRunner.Model.DataBase.Tables;
using System.Linq;
using System.Collections.Generic;
using System.Collections.ObjectModel;


namespace LifeRunner.ViewModel
{
    class TasksViewModel : BaseViewModel
    {
        private Work selectedTask;

        private MainWindowViewModel MainViewModel;
        public ObservableCollection<Work> Tasks { get; set; }

        public Work SelectedTask
        {
            get { return selectedTask; }
            set
            {
                selectedTask = value;
                
                OnPropertyChanged("SelectedTask");
            }
        }

        public List<Priority.PriorityLevel> PriorityLevels { get; set; }

        private int taskCount;
        public int TaskCount
        {
            get { return taskCount; }
            set
            {
                taskCount = value;
                OnPropertyChanged("TaskCount");
            }
        }

        private int taskCompleted;
        public int TaskCompleted
        {
            get
            {
                return taskCompleted;
            }
            set
            {
                taskCompleted = value;
                OnPropertyChanged("TaskCompleted");
            }
        }
        
        public TasksViewModel(MainWindowViewModel main)
        {
            MainViewModel = main;
            Tasks= new ObservableCollection<Work>();
            PriorityLevels = new List<Priority.PriorityLevel>();
            PriorityLevels = Priority.GetPriorityList();
            Tasks = DataManager.CurrentTasks;
            DataManager.CompleteEvent += CompleteEvent;
            DataManager.CancelEvent += CancelEvent;
            
            TaskCompleted = DataManager.db.Tasks.Where(t => t.IsRegular == false).Where(t => t.IsCompleted == true).Count();
            TaskCount = Tasks.Count();
        }

        private void CancelEvent(object t)
        {
            if(t is Work)TaskCount--;
        }

        private void CompleteEvent(object t)
        {
            if(t is Work)
            {
                Work ta = t as Work;
                if (ta.IsRegular == false)
                {
                    TaskCompleted++;
                    TaskCount--;
                }
            }
            
        }
        
        private RelayCommand editTaskCommand;
        public RelayCommand EditTaskCommand
        {
            get
            {
                return editTaskCommand ??
                  (editTaskCommand = new RelayCommand(obj =>
                  {
                      MainViewModel.SelectedViewModel = new TaskViewModel(SelectedTask, MainViewModel);
                  },
                  (obj) => SelectedTask != null));
            }
        }

        private RelayCommand newTaskCommand;
        public RelayCommand NewTaskCommand
        {
            get {
                return newTaskCommand ?? (
                  newTaskCommand = new RelayCommand(obj =>
                  {
                      MainViewModel.SelectedViewModel = new TaskViewModel(MainViewModel);
                  }));
                    }
        }
        
    }
}
