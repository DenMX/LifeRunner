using LifeRunner.Commands;
using LifeRunner.Model.DataBase;
using System;
using System.Collections.Generic;
using System.Linq;

namespace LifeRunner.ViewModel
{
    class MainWindowViewModel :BaseViewModel
    {

        private BaseViewModel _previouslyViewModel;

        private BaseViewModel _selectedViewModel;
        public BaseViewModel SelectedViewModel
        {
            get { return _selectedViewModel; }
            set
            {
                if(_selectedViewModel != value)
                {
                    _previouslyViewModel = _selectedViewModel;
                    _selectedViewModel = value;
                    OnPropertyChanged("SelectedViewModel");
                }
            }
        }

        public static SwitchViewCommand SwitchView { get; set; }

        public void GetBack()
        {
            SelectedViewModel = _previouslyViewModel;
        }

        private int[] levelsValue;

        public int Level
        {
            get
            {
                for(int i = 0; i<levelsValue.Length; i++)
                {
                    if (Settings.Default.TotalTime.TotalHours < levelsValue[i]) return i;
                }
                return 1;
            }
            set { OnPropertyChanged("Level"); }
        }

        public double TimeLeft
        {
            get
            {
                if (Settings.Default.Birth != null && Settings.Default.EndOfTime != null)
                    return ((Settings.Default.EndOfTime - Settings.Default.Birth) * 0.66).TotalDays;
                else return 0;
            }
            set
            {
                OnPropertyChanged("TimeLeft");
            }
        }

        public string TimeVisible
        {
            get
            {
                return TimeLeft > 0 ? "Visible" : "Hidden";
            }
        }

        public double LevelProgress
        {
            get {
                if (Settings.Default.TotalTime.TotalHours < 1) return 0;
                return (from st in DataManager.AllTasks() select st.WastedTime.TotalHours).Sum() % 10 / (10/ 100); }
            set { OnPropertyChanged("LevelProgress"); }
        }

        public MainWindowViewModel()
        {
            SwitchView = new SwitchViewCommand(this);
            SelectedViewModel = new TasksViewModel(this);
            levelsValue = new int[100];
            for (int i = 0; i < 100; i++)
            {
                levelsValue[i] = i * 10;
            }
        }

        
    }
}
