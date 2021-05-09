using LifeRunner.Commands;
using LifeRunner.Model.DataBase;
using LifeRunner.Model.DataBase.Tables;
using System.Collections.ObjectModel;
using System.Linq;

namespace LifeRunner.ViewModel
{
    class ProjectsViewModel : BaseViewModel
    {
        private MainWindowViewModel MainView;
        public ProjectsViewModel(MainWindowViewModel main)
        {
            MainView = main;
            Projects = new ObservableCollection<Project>();
            Projects = DataManager.CurrentProjects;
            DataManager.CancelEvent += CancelEvent;
            DataManager.CompleteEvent += CompleteEvent;
            CurrentProjectsCount = DataManager.db.Projects.Where(p => p.IsCompleted == false).Count();
            CompletedProjectsCount = DataManager.db.Projects.Where(p => p.IsCompleted == true).Count();
            
        }

        private void CompleteEvent(object o)
        {
            if (o is Project) CompletedProjectsCount++;
        }

        private void CancelEvent(object o)
        {
            if (o is Project) CurrentProjectsCount--;
        }

        public ObservableCollection<Project> Projects { get; set; }

        private Project selectedProject;
        public Project SelectedProject
        {
            get
            {
                return selectedProject;
            }
            set
            {
                if (selectedProject != value) selectedProject = value;
                OnPropertyChanged("SelectedProject");
            }
        }

        private Work selectedTask;
        public Work SelectedTask
        {
            get
            {
                return selectedTask;
            }
            set
            {
                if (selectedTask != value) selectedTask = value;
                OnPropertyChanged("SelectedTask");
            }
        }

        private int currentProjectsCount;
        public int CurrentProjectsCount
        {
            get
            {
                return currentProjectsCount;
            }
            set
            {
                currentProjectsCount = value;
                OnPropertyChanged("CurrentProjectsCount");
            }
        }

        private int completedProjectsCount;
        public int CompletedProjectsCount
        {
            get
            {
                return completedProjectsCount;
            }
            set
            {
                completedProjectsCount = value;
                OnPropertyChanged("CompletedProjectsCount");
            }
        }

        private RelayCommand editProject;
        public RelayCommand EditProject
        {
            get
            {
                return editProject ??
                  (editProject = new RelayCommand(obj =>
                  {
                      MainView.SelectedViewModel = new ProjectViewModel(MainView, SelectedProject);
                  },
                  (obj)=> SelectedProject != null));
            }
        }

        private RelayCommand editCommand;
        public RelayCommand EditCommand
        {
            get {
                return editCommand ??
                  (editCommand = new RelayCommand(obj =>
                  {
                      MainView.SelectedViewModel = new TaskViewModel(SelectedTask, MainView);
                  },
                  (obj) => SelectedTask!= null));
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
                      DataManager.CancelTask(SelectedTask);
                  },
                  (obj) => SelectedTask!= null));
            }
        }

        private RelayCommand completeCommand;
        public RelayCommand CompleteCommand
        {
            get
            {
                return completeCommand ??
                    (completeCommand = new RelayCommand(obj =>
                    {
                        DataManager.CompleteTask(SelectedTask);
                    },
                    (obj) => SelectedTask != null));
            }
        }

        private RelayCommand newProjectCommand;
        public RelayCommand NewProjectCommand
        {
            get
            {
                return newProjectCommand ??
                    (newProjectCommand = new RelayCommand(obj =>
                    {
                        MainView.SelectedViewModel = new ProjectViewModel(MainView);
                    }));
            }
        }
    }
}
