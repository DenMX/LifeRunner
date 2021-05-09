using LifeRunner.ViewModel;
using System;
using System.Windows;


namespace LifeRunner.View
{
    /// <summary>
    /// Логика взаимодействия для CreatingCategory.xaml
    /// </summary>
    public partial class CreatingCategory : Window
    {
        public CreatingCategory()
        {
            InitializeComponent();
            var vm = new CreatingCategoryViewModel();
            this.DataContext = vm;
            if(vm.CloseAction == null)
            {
                vm.CloseAction = new Action(this.Close);
            }
        }
    }
}
