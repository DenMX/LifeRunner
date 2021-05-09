using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace LifeRunner.View
{
    /// <summary>
    /// Логика взаимодействия для Start.xaml
    /// </summary>
    public partial class Start : Window
    {
        private int ticks = 0;
        public Start()
        {
            InitializeComponent();
            if (!Settings.Default.StartWindow) this.Close();
            Settings.Default.StartWindow = false;
            Settings.Default.Save();
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            new MainWindow().Show();
        }

        private void YesButton_Click(object sender, RoutedEventArgs e)
        {
            IntroText.Visibility = Visibility.Hidden;
            SecondPanel.Visibility = Visibility.Visible;
        }
        private void NoButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Birth_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            Settings.Default.Birth = (DateTime)Birth.SelectedDate;
            Settings.Default.EndOfTime = (DateTime)(Birth.SelectedDate + TimeSpan.FromDays(365 * 75));
            Settings.Default.Save();
            LeftTimeText.Text = ((Settings.Default.EndOfTime - Settings.Default.Birth) * 0.66).ToString();
            LeftTimeText.Visibility = Visibility.Visible;
            var dt = new DispatcherTimer();
            dt.Interval = new TimeSpan(0, 0, 1);
            dt.Tick += Dt_Tick;
            dt.Start();
            
        }

        private void Dt_Tick(object sender, EventArgs e)
        {
            if (ticks >= 3) this.Close();
            ticks++;
        }
    }
}
