using LifeRunner.Commands;
using LifeRunner.Model.DataBase;
using LifeRunner.Model.DataBase.Tables;
using LifeRunner.View;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using Project = LifeRunner.Model.DataBase.Tables.Project;

namespace LifeRunner.ViewModel
{
    class ProjectViewModel : BaseViewModel
    {
        public ProjectViewModel(MainWindowViewModel main)
        {
            MainModel = main;
            Project = new Project();
            GetCategories();
            isNew = true;
        }

        public ProjectViewModel(MainWindowViewModel main, Project project)
        {
            MainModel = main;
            Project = project;
            GetCategories();
            isNew = false;
        }
        private void GetCategories()
        {
            Categories = new ObservableCollection<Category>();
            Categories = DataManager.Categories;
        }

        private bool isNew;
        private MainWindowViewModel MainModel;

        private Project project;
        public Project Project
        {
            get { return project; }
            set
            {
                project = value;
                OnPropertyChanged("Project");
            }
        }

        
        public string NeedTime
        {
            get {

                return Project.NeedTime;
            }
            set
            {
                if(value.Split(':').Length == 3) Project.NeedTime = String.Format("{0:#:d2:d2}", value);
                OnPropertyChanged("NeedTime");
            }
        }

        private RelayCommand backCommand;
        public RelayCommand BackCommand
        {
            get
            {
                return backCommand ??
                    (backCommand = new RelayCommand(obj =>
                    {
                        MainModel.GetBack();
                    }));
            }
        }

        public ObservableCollection<Category> Categories
        {
            get;set;
        }

        private RelayCommand createCommand;
        public RelayCommand CreateCommand
        {
            get
            {
                return createCommand ??
                    (createCommand = new RelayCommand(obj =>
                    {
                        if(isNew)DataManager.AddNewProject(Project);
                        if (!isNew) DataManager.UpdateProject(Project);
                        BackCommand.Execute(null);
                    }));
            }
        }
        private RelayCommand createWithTaskCommand;
        public RelayCommand CreateWithTaskCommand
        {
            get
            {
                return createWithTaskCommand ??
                  (createWithTaskCommand = new RelayCommand(obj =>
                  {
                      DataManager.AddNewProject(Project);
                      Work work = new Work();
                      work.Project = Project;
                      MainModel.SelectedViewModel = new TaskViewModel(work, MainModel);
                  }));
            }
        }

        private RelayCommand addCategory;
        public RelayCommand AddCategory
        {
            get
            {
                return addCategory ??
                    (addCategory = new RelayCommand(obj =>
                    {
                        new CreatingCategory().Show();
                    }));
            }
        }
    }
}
