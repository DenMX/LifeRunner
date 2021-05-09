using LifeRunner.Commands;
using LifeRunner.ViewModel;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;

namespace LifeRunner.Model.DataBase.Tables
{
    class Project : BaseViewModel 
    {
        public int Id { get; set; }
        private string name;
        public string Name 
        {
            get
            {
                return name;
            }
            set
            {
                name = value;
                OnPropertyChanged("Name");
            }
        }
        private List<Work> tasks;
        public List<Work> Tasks 
        { 
            get
            {
                return tasks;
            }
            set
            {
                tasks = value;
                OnPropertyChanged("Tasks");
            }
        }

        private string description;
        public string Description
        {
            get { return description; }
            set
            {
                description = value;
                OnPropertyChanged("Description");
            }
        }

        private DateTime date;
        public DateTime Date
        {
            get
            {
                return date;
            }
            set
            {
                date = value;
                OnPropertyChanged("Date");
            }
        }

        private string wastedTime;
        public string WastedTime 
        { 
            get
            {
                return wastedTime;
            }
            set 
            {
                wastedTime = value;
                //Progress = wastedTime.TotalSeconds / (NeedTime.TotalSeconds / 100);
                OnPropertyChanged("WastedTime");
            }
        }
        private string needTime;
        public string NeedTime 
        {
            get
            {
                return needTime;
            }
            set {
                needTime = value;
                OnPropertyChanged("NeedTime");
            }
        }
        private bool isCompleted;
        public bool IsCompleted {
            get
            {
                return isCompleted;
            } set
            {
                isCompleted = value;
                OnPropertyChanged("IsCompleted");
            }
            }
        private Category category;
        public Category Category {
            get { return category; }
            set
            {
                category = value;
                OnPropertyChanged("Category");
            }
            }//Work/home or smt-else

        private double progress;
        [NotMapped]
        public double Progress
        {
            get { return progress; }
            set
            {
                progress = value;
                OnPropertyChanged("Progress");
            }
        }

        public Project()
        {
            if(this.Id != 0 && DataManager.db.Projects.Find(this.Id) != null)
            {
                foreach (var t in DataManager.db.Tasks.Where(t => t.Project == this))
                {
                    t.TimeEvent += TimeEvent;
                }
            }
            else
            {
                this.NeedTime = "00:00:00";
                this.WastedTime = "00:00:00";
            }
            
        }

        private void TimeEvent()
        {
            this.WastedTime += TimeSpan.FromSeconds(1);
        }


        #region Commands & Events
        public delegate void CancelHandler(Project project);
        public event CancelHandler CancelEvent;
        private RelayCommand cancelCommand;
        [NotMapped]
        public RelayCommand CancelCommand
        {
            get {
                return cancelCommand ??
                  (cancelCommand = new RelayCommand(obj =>
                  {
                      DataManager.CancelProject(this);
                      CancelEvent?.Invoke(this);
                  }));
            }
        }

       
        private RelayCommand completeCommand;
        [NotMapped]
        public RelayCommand CompleteCommand
        {
            get
            {
                return completeCommand ??
                    (completeCommand = new RelayCommand(obj =>
                    {
                        DataManager.CompleteProject(this);
                        
                    }));
            }
        }
        
        #endregion
    }
}
