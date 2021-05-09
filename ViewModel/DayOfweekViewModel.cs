using System;
using System.Collections.Generic;
using System.Text;

namespace LifeRunner.ViewModel
{
    class DayOfweekViewModel : BaseViewModel
    {
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

        private bool isSelected;
        public bool IsSelected
        {
            get { return isSelected; }
            set
            {
                isSelected = value;
                OnPropertyChanged("IsSelected");
            }
        }

        public DayOfweekViewModel(string _name)
        {
            Name = _name;
            IsSelected = false;
        }
    }
}
