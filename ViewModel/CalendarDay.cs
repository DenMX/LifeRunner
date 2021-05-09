using LifeRunner.Model.DataBase;
using LifeRunner.Model.DataBase.Tables;
using System;
using System.Collections.ObjectModel;
using System.Linq;


namespace LifeRunner.ViewModel
{
    class CalendarDay : BaseViewModel
    {
        private DateTime day;
        public DateTime Day
        {
            get { return day; }
            set
            {
                day = value;
                OnPropertyChanged("DDay");
            }
        }

        public string sDay
        {
            get { return Day.ToString("d.MM"); }
        }

        public ObservableCollection<Work> Tasks { get; set; }

        public CalendarDay(DateTime day)
        {
            Day = day;
            Tasks = new ObservableCollection<Work>();
            foreach(var t in DataManager.AllTasks().Where(t => t.Date == day).Where(t => !t.IsRegular).Where(t => !t.IsCompleted))
            {
                Tasks.Add(t);
                t.DeleteEvent += DeleteEvent;
            }
            DataManager.NewTaskEvent += NewTask;
        }

        private void DeleteEvent(Work task)
        {
            Tasks.Remove(task);
        }

        private void NewTask(Work task)
        {
            if(task.Date == Day)
            {
                Tasks.Add(task);
                task.DeleteEvent += DeleteEvent;
            }
        }
    }
}
