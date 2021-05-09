using LifeRunner.Model.DataBase.Tables;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.ObjectModel;
using System.Linq;

namespace LifeRunner.Model.DataBase
{
    class ApplicationContext : DbContext
    {
        public DbSet<Work> Tasks { get; set; }
        public DbSet<Project> Projects { get; set; }
        public DbSet<Category> Categories { get; set; }

        public static ObservableCollection<Work> _tasks;
        public static ObservableCollection<Project> _projects;
        public static ObservableCollection<Category> _categories;

        private bool IsToday;

        public ApplicationContext()
        {
            Database.EnsureCreated();
            _tasks = new ObservableCollection<Work>();
            _projects = new ObservableCollection<Project>();
            _categories = new ObservableCollection<Category>();
            if (Settings.Default.LastRunDate == DateTime.Today) IsToday = true;
            else IsToday = false;
            loadTasks();
            loadProjects();
            loadCategories();
            SaveChanges();
            Settings.Default.LastRunDate = DateTime.Today;
            Settings.Default.Save();
        }

        private void loadTasks()
        {
            foreach (var t in Tasks)
            {

                if (t.Date < DateTime.Today && !t.IsCompleted && !t.IsRegular)
                {
                    if (t.Priority > 0)
                        t.Priority -= 1;
                    if (!IsToday)
                    {
                        t.WastedToday = new TimeSpan(0, 0, 0);
                    }
                    this.Tasks.Update(t);
                    _tasks.Add(t);
                }
                else if(t.Date == DateTime.Today && !t.IsCompleted && !t.IsRegular)
                {
                    _tasks.Add(t);
                }
                else if(t.IsRegular)
                {
                    var sw = SheduleWorker.ConvertFrom(t.Shedule);
                    if (sw.SheduleType == SheduleWorker.SheduleTypes.Everyday) {
                        if (!IsToday)
                        {
                            if (t.IsCompleted)
                            {
                                t.IsCompleted = false;
                            }
                            t.WastedToday = new TimeSpan(0, 0, 1);

                        }
                        _tasks.Add(t);
                    }
                    else if (sw.SheduleType == SheduleWorker.SheduleTypes.Interval)
                    {
                        if (t.Date >= DateTime.Today)
                        {
                            if (!IsToday)
                            {
                                if (t.IsCompleted)
                                {
                                    t.IsCompleted = false;
                                }
                                t.WastedToday = new TimeSpan(0, 0, 1);

                            }
                            t.Date = DateTime.Today + TimeSpan.FromDays(sw.Interval);
                            this.Tasks.Update(t);
                            _tasks.Add(t);
                        }
                    }
                    else if (sw.SheduleType == SheduleWorker.SheduleTypes.DaysOfWeek)
                    {
                        foreach (var d in sw.Days.Where(t => t.IsSelected))
                        {
                            if (d.Name == DateTime.Today.DayOfWeek.ToString())
                            {
                                if (!IsToday)
                                {
                                    if (t.IsCompleted)
                                    {
                                        t.IsCompleted = false;
                                    }
                                    t.WastedToday = new TimeSpan(0, 0, 1);
                                    this.Tasks.Update(t);
                                }
                                _tasks.Add(t);
                                break;
                            }
                        }
                    }
                }
            }
        }

        private void loadProjects()
        {
            foreach(var p in Projects)
            {
                if(p.IsCompleted == false)
                    _projects.Add(p);
            }
        }

        private void loadCategories()
        {
            foreach(var c in Categories)
            {
                _categories.Add(c);
            }
        }


        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=(localdb)\mssqllocaldb;Database=LifeRunnerTest0.9;Trusted_Connection=True;");
        }
    }
}
