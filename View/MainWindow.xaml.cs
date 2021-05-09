using LifeRunner.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace LifeRunner.View
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Border1.MouseLeftButtonDown += NewDragAction;
            if (Settings.Default.LastRunDate < DateTime.Today || Settings.Default.RunCount == 0)
            {
                Settings.Default.LastRunDate = DateTime.Today;
                Settings.Default.RunCount++;
                Settings.Default.Save();
            }
            DataContext = new MainWindowViewModel();
        }

        private void NewDragAction(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}
