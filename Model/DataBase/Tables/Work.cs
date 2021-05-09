using LifeRunner.Commands;
using LifeRunner.ViewModel;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Diagnostics;
using System.Windows.Threading;

namespace LifeRunner.Model.DataBase.Tables
{
    class Work : BaseViewModel
    {
        #region Columns
        private int id;
        public int Id 
        { 
            get { return id; }
            set
            {
                id = value;
                OnPropertyChanged("Id");
            }
        }
        private string name;
        public string Name 
        {
            get { return name; }
            set
            {
                name = value;
                
                OnPropertyChanged("Name");
            }

        }
        private string discription;
        public string Discription 
        {
            get { return discription; }
            set 
            {
                discription = value;
                
                OnPropertyChanged("Discription");
            } 
        }
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

        private Category category;
        public Category Category
        {
            get { return category; }
            set
            {
                category = value;
                
                OnPropertyChanged("Category");
            }
        }

        private Priority.PriorityLevel priority;
        public Priority.PriorityLevel Priority
        {
            get { return priority; }
            set
            {
                if (priority != value)
                {
                    priority = value;
                    
                    OnPropertyChanged("Priority");
                }
            }
        }
        private DateTime date;
        public DateTime Date //When it will
        {
            get { return date; }
            set
            {
                date = value;
                OnPropertyChanged("Date");
            }
        }
        private TimeSpan needTime;
        public TimeSpan NeedTime 
        {
            get { return needTime; }
            set
            { 
                if(value.TotalHours < TimeSpan.FromHours(24).TotalHours) needTime = value;
                OnPropertyChanged("NeedTime");
            }
        }
        private TimeSpan wastedTime;
        public TimeSpan WastedTime
        {
            get { return wastedTime; }
            set
            {
                if (value.TotalHours < TimeSpan.FromHours(24).TotalHours) wastedTime = value;
                OnPropertyChanged("WastedTime");
            }
        }
        private TimeSpan wastedToday;
        public TimeSpan WastedToday
        {
            get { return wastedToday; }
            set
            {
                if (value.TotalHours < TimeSpan.FromHours(24).TotalHours) wastedToday = value;
                OnPropertyChanged("WastedToday");
            }
        }
        private bool _isRegular;
        public bool IsRegular //Regular tasks must disabling picking date
        {
            get { return _isRegular; }
            set
            {
                _isRegular = value;
                OnPropertyChanged("IsRegular");
            }
        }

        private string shedule;
        public string Shedule
        {
            get { return shedule; }
            set
            {
                shedule = value;
                OnPropertyChanged("Shedule");
            }
        }
        
        private bool _isCompleted;
        public bool IsCompleted 
        {
            get { return _isCompleted; }
            set
            {
                _isCompleted = value;
                OnPropertyChanged("IsCompleted");
            } 
        }
        #endregion

        public Work()
        {
            dt = new DispatcherTimer();
            sw = new Stopwatch();
            dt.Tick += Timer;
            dt.Interval = new TimeSpan(0, 0, 1);
            if (Date.Year == 0001) Date = DateTime.Today;
        }

        private DispatcherTimer dt;
        private Stopwatch sw;
        public delegate void TimeHandler();
        public event TimeHandler TimeEvent;

        public delegate void StopwatchHandler();
        public event StopwatchHandler StopwatchStoped;

        private void Timer(object sender, EventArgs e)
        {
            this.WastedToday += TimeSpan.FromSeconds(1);
            this.WastedTime += TimeSpan.FromSeconds(1);
            Settings.Default.TotalTime += TimeSpan.FromSeconds(1);
        }

        private void ProjectTimer(object sender, EventArgs e)
        {
            var time = Project.WastedTime.Split(":");
            var t = new TimeSpan(Int32.Parse(time[0]), Int32.Parse(time[1]), Int32.Parse(time[2])) + TimeSpan.FromSeconds(1);
            Project.WastedTime = $"{(int)t.TotalHours}:{t.Minutes}:{t.Seconds}";
        }

        public void StartTimer()
        {
            if (sw.IsRunning) return;
            if (this.Project != null) dt.Tick += ProjectTimer;
            sw.Start();
            dt.Start();
            TimeEvent?.Invoke();
        }

        public void StopTimer()
        {
            if (!sw.IsRunning && !dt.IsEnabled) return;
            sw.Stop();
            dt.Stop();
            
            if (this.Project != null) DataManager.UpdateProject(this.Project);
            Settings.Default.Save();
            OnPropertyChanged("LevelProgress");
            OnPropertyChanged("Level");
            StopwatchStoped?.Invoke();
        }

        #region Commands
        #region Timer
        private RelayCommand timerCommand;
        [NotMapped]
        public RelayCommand TimerCommand//Switching activity if timer
        {
            get
            {
                return timerCommand ??
                    (timerCommand = new RelayCommand(obj =>
                    {
                        if (sw.IsRunning) StopTimer();
                        else if (!sw.IsRunning) StartTimer();
                    }));
            }
        }
        #endregion
        #region CompleteCommand
        public delegate void CompleteHandler(Work task);
        public event CompleteHandler CompleteEvent;

        private RelayCommand completeCommand;
        [NotMapped]
        public RelayCommand CompleteCommand
        {
            get
            {
                return completeCommand ??
                    (completeCommand = new RelayCommand(obj =>
                    {
                            DataManager.CompleteTask(this);
                            CompleteEvent?.Invoke(this);
                    },
                    (obj) => !this.IsCompleted));
            }
        }
        #endregion
        #region DeleteTask
        public delegate void DeleteHandler(Work task);
        public event DeleteHandler DeleteEvent;

        private RelayCommand deleteCommand;
        [NotMapped]
        public RelayCommand DeleteCommand
        {
            get
            {
                return deleteCommand ??
                    (deleteCommand = new RelayCommand(obj =>
                    {
                        DataManager.CancelTask(this);
                        DeleteEvent?.Invoke(this);
                    }));
            }
        }
        #endregion
        #region SaveChanges
        private RelayCommand saveCommand;
        [NotMapped]
        public RelayCommand SaveCommand
        {
            get
            {
                return saveCommand ??
                    (saveCommand = new RelayCommand(obj =>
                    {
                        
                    }));
            }
        }

        #endregion
        #endregion

    }
}
