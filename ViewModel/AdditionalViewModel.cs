using LifeRunner.Model.DataBase;
using LifeRunner.Model.DataBase.Tables;
using System;
using System.Linq;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace LifeRunner.ViewModel
{
    class AdditionalViewModel :BaseViewModel
    {
        private MainWindowViewModel view;

        public ObservableCollection<Work> AllTasks { get; set; }
        public ObservableCollection<Project> AllProjects { get; set; }


        private double totalWastedTime;
        public double TotalWastedTime
        {
            get { return totalWastedTime; }
            set
            {
                totalWastedTime = value;
                OnPropertyChanged("TotalWastedTime");
            }
        }

        private int accuracyNeedTime;
        public int AccuracyNeedTime
        {
            get { return accuracyNeedTime; }
            set
            {
                accuracyNeedTime = value;
                OnPropertyChanged("AccuracyNeedTime");
            }
        }

        private double avgTime;

        public double AvgTime
        {
            get { return avgTime; }
            set
            {
                avgTime = value;
                OnPropertyChanged("AvgTime");
            }
        }

        public AdditionalViewModel(MainWindowViewModel view)
        {
            this.view = view;
            AllTasks = DataManager.AllTasks();
            AllProjects = DataManager.AllProjects();
            CalculateWastedTime();
            CalculateAvgTime();
            CalculateAccuracy();
        }

        private void CalculateWastedTime()//Calculating avg wasted time per day and Calculating total wasted time
        {
            double sum = 0;
            foreach(var t in AllTasks)
            {
                sum += t.WastedTime.TotalSeconds;
                t.StopwatchStoped += CalculateAvgTime;
                t.StopwatchStoped += CalculateWastedTime;
            }
            TotalWastedTime = TimeSpan.FromSeconds(sum).TotalHours;
        }
        private void CalculateAvgTime()//Avg time per day
        {
            double sum = 0;
            if(AllTasks.Where(t=> t.IsCompleted).Count() > 0)
            {
                foreach(var t in AllTasks.Where(t => t.IsCompleted))
                {
                    sum += t.WastedTime.TotalSeconds;
                }
                AvgTime = TimeSpan.FromSeconds(sum).TotalHours / Settings.Default.RunCount;
            }
        }
        private void CalculateAccuracy()//Calculating % of wasted time and needed time
        {
            List<double> acc = new List<double>();
            foreach(var t in AllTasks)
            {
                if(t.WastedTime.TotalSeconds > 0 && t.NeedTime.TotalSeconds > 0 && t.IsCompleted)
                {
                    acc.Add(t.WastedTime / (t.NeedTime / 100));
                }
            }
            if (acc.Count > 0)
                AccuracyNeedTime = (int)(acc.Sum() / acc.Count);
            else AccuracyNeedTime = 0;
        }
    }
}
