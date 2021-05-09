using LifeRunner.Commands;
using LifeRunner.Model.DataBase;
using LifeRunner.Model.DataBase.Tables;
using System;

namespace LifeRunner.ViewModel
{
    class CreatingCategoryViewModel :BaseViewModel
    {
        public Action CloseAction { get; set; }

        private string categoryName;
        public string CategoryName
        {
            get { return categoryName; }
            set
            {
                categoryName = value;
                OnPropertyChanged("CategoryName");
            }
        }

        private RelayCommand createCommand;
        public RelayCommand CreateCommand
        {
            get
            {
                return createCommand ??
                    (createCommand = new RelayCommand(obj =>
                    {
                        Category cat = new Category();
                        cat.Name = CategoryName;
                        DataManager.AddNewCategory(cat);
                        CloseAction();
                    },
                    (obj) => CategoryName != string.Empty));
            }
        }
    }
}
