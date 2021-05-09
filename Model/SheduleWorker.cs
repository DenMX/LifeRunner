using LifeRunner.ViewModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;

namespace LifeRunner.Model
{
    class SheduleWorker
    {

        public enum SheduleTypes 
        {
            Everyday,
            Interval,
            DaysOfWeek
        }
        public static string ConvertIn(ObservableCollection<DayOfweekViewModel> collection, int interval)
        {
            if (interval > 0) return $"{interval}/0";

            string result = "0/";
            foreach (var d in collection.Where(t => t.IsSelected))
            {
                foreach (var dd in Enum.GetValues(typeof(DayOfWeek)).Cast<DayOfWeek>().ToList())
                {
                    if (d.Name == dd.ToString())
                    {
                        result += $"{(int)dd + 1},";
                        break;
                    }
                }
            }

            return result;
        }

        public static SheduleWorker ConvertFrom(string shedule)
        {
            if (shedule == null || shedule == "") return null;
            SheduleWorker worker = new SheduleWorker();
            worker.Days = new List<DayOfweekViewModel>();
            foreach (var d in Enum.GetValues(typeof(DayOfWeek)).Cast<DayOfWeek>().ToList()) 
                worker.Days.Add(new DayOfweekViewModel(d.ToString()));
            string[] fd = shedule.Split('/');
            worker.Interval = Int32.Parse(fd[0]);
            if (worker.Interval == 0)
            {
                if (fd[1] != "0")
                {
                    worker.SheduleType = SheduleTypes.DaysOfWeek;
                    string[] sd = fd[1].Split(',');
                    foreach (var d in sd)
                    {
                        if (!string.IsNullOrEmpty(d)) worker.Days[Int32.Parse(d) - 1].IsSelected = true;
                    }
                }
                else if (Int32.Parse(fd[1]) == 0)
                {
                    worker.SheduleType = SheduleTypes.Everyday;
                }
            }
            else worker.SheduleType = SheduleTypes.Interval;
            
            return worker;
        }

        public SheduleTypes SheduleType;
        public List<DayOfweekViewModel> Days;
        public int Interval;



    }
}
