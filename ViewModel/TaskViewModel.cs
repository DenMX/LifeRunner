using LifeRunner.Model.DataBase.Tables;
using LifeRunner.Commands;
using System;
using System.Collections.Generic;
using System.Text;
using LifeRunner.Model.DataBase;
using LifeRunner.Model;
using System.Linq;
using LifeRunner.View;
using Project = LifeRunner.Model.DataBase.Tables.Project;
using System.Collections.ObjectModel;

namespace LifeRunner.ViewModel
{
    class TaskViewModel : BaseViewModel
    {
        Work _task;

        public Work Task
        {
            get { return _task; }
            set
            {
                _task = value;
                OnPropertyChanged("Task");
            }
        }

        private bool isNew;

        private RelayCommand backCommand;
        public RelayCommand BackCommand
        {
            get
            {
                return backCommand ??
                    (backCommand = new RelayCommand(obj =>
                    {
                        mainView.GetBack();
                    }));
            }
        }

        private Priority.PriorityLevel selectedPriority;
        public Priority.PriorityLevel SelectedPriority
        {
            get { return selectedPriority; }
            set
            {
                selectedPriority = value;
                _task.Priority = value;
                OnPropertyChanged("SelectedPriority");
            }
        }

        private Category selectedCategory;
        public Category SelectedCategory
        {
            get { return selectedCategory; }
            set
            {
                selectedCategory = value;
                _task.Category = value;
                OnPropertyChanged("SelectedCategory");
            }
        }
        public List<Priority.PriorityLevel> _Priority { get; set; }
        public ObservableCollection<Category> Categories { get; set; }
        public ObservableCollection<Project> Projects { get; set; }

        private RelayCommand saveCommand;
        public RelayCommand SaveCommand
        {
            get
            {
                return saveCommand ??
                    (saveCommand = new RelayCommand(obj =>
                    {
                        if (IsRegular) ConvertShedule();
                        
                        DataManager.UpdateTask(Task);
                        mainView.SelectedViewModel = new TasksViewModel(mainView);                            
                    }));
            }
        }

        private bool dateActive;

        public bool DateActive
        {
            get { return dateActive; }
            set
            {
                dateActive = value;
                OnPropertyChanged("DateActive");
            }
        }

        private void ConvertShedule()
        {
            if (sheduleType == SheduleTypes[0])
            {
                Task.Shedule = "0/0";
                return;
            }
            else
            {
                Task.Shedule = SheduleWorker.ConvertIn(DaysOfWeek, Interval);
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

        private string needTime;
        public string NeedTime
        {
            get { return needTime; }
            set
            {
                needTime = value;
                _task.NeedTime = TimeSpan.FromHours(Convert.ToDouble(value.Split(':', StringSplitOptions.None)[0])) + TimeSpan.FromMinutes(Convert.ToDouble(value.Split(':', StringSplitOptions.None)[1]));
                OnPropertyChanged("NeedTime");
            }
        }

        #region SheduleSettings

        
        public bool IsRegular
        {
            get { return Task.IsRegular; }
            set
            {
                Task.IsRegular = value;
                if (value == false)
                {
                    SheduleType = null;
                    DateActive = true;
                }
                else 
                    DateActive = false;
                OnPropertyChanged("IsRegular");
            }
        }


        public List<string> SheduleTypes { get; set; }
        public ObservableCollection<DayOfweekViewModel> DaysOfWeek { get; set; }

        private string sheduleType;
        public string SheduleType
        {
            get { return sheduleType; }
            set
            {
                sheduleType = value;
                if (sheduleType == SheduleTypes[1])
                {
                    IsInterval = true;
                    IsDays = false;
                }
                else if (sheduleType == SheduleTypes[2])
                {
                    IsDays = true;
                    IsInterval = false;
                }
                else
                {
                    IsDays = false;
                    IsInterval = false;
                }
                OnPropertyChanged("SheduleType");
            }
        }
        private bool isInterval;
        public bool IsInterval
        {
            get { return isInterval; }
            set
            {
                isInterval = value;
                if (value == true) IntervalVisibility = "Visible";
                else IntervalVisibility = "Hidden";
                OnPropertyChanged("IsInterval");
            }
        }

        private string intervalVisibility;
        public string IntervalVisibility
        {
            get { return intervalVisibility; }
            set
            {
                intervalVisibility = value;
                OnPropertyChanged("IntervalVisibility");
            }
        }

        private bool isDays;
        public bool IsDays
        {
            get { return isDays; }
            set
            {
                isDays = value;
                if (value == true) DaysVisibility = "Visible";
                else DaysVisibility = "Hidden";
                OnPropertyChanged("IsDays");
            }
        }

        private string daysVisibility;
        public string DaysVisibility
        {
            get { return daysVisibility; }
            set
            {
                daysVisibility = value;
                OnPropertyChanged("DaysVisibility");
            }
        }

        private int interval;
        public int Interval
        {
            get { return interval; }
            set
            {
                interval = value;
                OnPropertyChanged("Interval");
            }
        }
        private DayOfweekViewModel selectedDays;
        public DayOfweekViewModel SelectedDays
        {
            get { return selectedDays; }
            set
            {
                var selectedItems = DaysOfWeek.Where(x => x.IsSelected).Count();
                OnPropertyChanged("SelectedDay");
            }
        }
        #endregion

        MainWindowViewModel mainView;

        public TaskViewModel(MainWindowViewModel mainWindowView) 
        {
            _task = new Work();
            mainView = mainWindowView;
            isNew = true;
            DateActive = true;
            Init();
        }

        public TaskViewModel(Work task, MainWindowViewModel mainWindowView)
        {
            mainView = mainWindowView;
            if(task != null)
            {
                _task = task;
            }
            isNew = false;
            Init();
        }

        private void Init()//Initialization method
        {
            SheduleTypes = new List<string>();
            foreach(var st in Enum.GetValues(typeof(SheduleWorker.SheduleTypes)).Cast<SheduleWorker.SheduleTypes>().ToList())
            {
                SheduleTypes.Add(st.ToString());
            }
            GetLists();
            if (isNew)
            {
                IsDays = false;
                IsInterval = false;
                DaysOfWeek = new ObservableCollection<DayOfweekViewModel>();
                foreach (var d in Enum.GetValues(typeof(DayOfWeek)).Cast<DayOfWeek>().ToList()) DaysOfWeek.Add(new DayOfweekViewModel(d.ToString()));
                return;
            }
            else if(!isNew && Task.IsRegular)
            {
                var sw = SheduleWorker.ConvertFrom(Task.Shedule);
                if(sw != null)
                {
                    Interval = sw.Interval;
                    DaysOfWeek = new ObservableCollection<DayOfweekViewModel>();
                    foreach (var DoW in sw.Days) DaysOfWeek.Add(DoW);
                    SheduleType = sw.SheduleType.ToString();
                }
            }
        }

        private void GetLists()
        {
            GetCategories();
            GetProjects();
            _Priority = Priority.GetPriorityList();
        }

        private void GetCategories()
        {
            Categories = DataManager.Categories;
        }

        private void GetProjects()
        {
            Projects = new ObservableCollection<Project>();
            foreach(var proj in DataManager.CurrentProjects)
            {
                Projects.Add(proj);
            }
        }
    }
}
