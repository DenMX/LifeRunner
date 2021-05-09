using LifeRunner.Model.DataBase.Tables;
using System;
using System.Collections.ObjectModel;

namespace LifeRunner.Model.DataBase
{
    static class DataManager
    {
        public static ObservableCollection<Work> CurrentTasks
        {
            get
            {
                if (db == null) db = new ApplicationContext();
                return ApplicationContext._tasks;
            }
            set
            {
                ApplicationContext._tasks = value;
            }
        }
        public static ObservableCollection<Project> CurrentProjects
        {
            get
            {
                if (db == null) db = new ApplicationContext();
                return ApplicationContext._projects;
            }
        }
        public static ObservableCollection<Category> Categories {
            get
            {
                if (db == null) db = new ApplicationContext();
                return ApplicationContext._categories;
            }
            }


        public static ApplicationContext db = new ApplicationContext();
        
        public static ObservableCollection<Work> AllTasks()
        {
            var tasks = new ObservableCollection<Work>();
            foreach(var t in db.Tasks)
            {
                tasks.Add(t);
            }
            return tasks;
        }

        public static ObservableCollection<Project> AllProjects()
        {
            var projects = new ObservableCollection<Project>();
            foreach(var p in db.Projects)
            {
                projects.Add(p);
            }
            return projects;
        }

        public delegate void NewTaskHandler(Work task);//For calendar
        public static event NewTaskHandler NewTaskEvent;
        public static void AddNewTask(Work task)
        {
            if (db == null) db = new ApplicationContext();
            if (db.Tasks.Find(task.Id) == null)
            {
                db.Tasks.Add(task);
                db.SaveChanges();
            }
            else UpdateTask(task);
            
            if (task.Date > DateTime.Today && !task.IsRegular) return;
            CurrentTasks.Add(task);
            NewTaskEvent?.Invoke(task);
        }

        public static void AddNewProject(Project project)
        {
            if (db == null) db = new ApplicationContext();
            db.Projects.Add(project);
            db.SaveChanges();
            CurrentProjects.Add(project);
        }

        public static void AddNewCategory(Category category)
        {
            if (db == null) db = new ApplicationContext();
            db.Categories.Add(category);
            db.SaveChanges();
            Categories.Add(category);
        }

        public static void UpdateProject(Project project)
        {
            if (db == null) db = new ApplicationContext();
            if (db.Projects.Find(project.Id) == null) AddNewProject(project);
            else
            {
                db.Projects.Update(project);
            }
            db.SaveChanges();
        }

        public static void UpdateTask(Work task)
        {
            if (db == null) db = new ApplicationContext();
            if(db.Tasks.Find(task.Id) != null)
            {
                db.Tasks.Update(task);
                db.SaveChanges();
                if (task.IsCompleted) CurrentTasks.Remove(task);
                return;
            }
            else
            {
                AddNewTask(task);
            }
            
        }

        public delegate void CancelHandler(object o);
        public static event CancelHandler CancelEvent;
        public static void CancelTask(Work task)
        {
            db.Tasks.Remove(task);
            db.SaveChanges();
            if (CurrentTasks.Contains(task)) CurrentTasks.Remove(task);
            CancelEvent?.Invoke(task);
        }

        public static void CancelProject(Project project)
        {
            db.Projects.Remove(project);
            db.SaveChanges();
            if (CurrentProjects.Contains(project)) CurrentProjects.Remove(project);
            CancelEvent?.Invoke(project);
        }

        public delegate void CompleteHandler(object o);
        public static event CompleteHandler CompleteEvent;
        public static void CompleteTask(Work task)
        {
            task.IsCompleted = true;
            db.Tasks.Update(task);
            db.SaveChanges();
            CurrentTasks.Remove(task);
            CompleteEvent?.Invoke(task);
        }

        public static void CompleteProject(Project project)
        {
            project.IsCompleted = true;
            foreach(var t in project.Tasks)
            {
                CompleteTask(t);
            }
            db.Projects.Update(project);
            db.SaveChanges();
            CurrentProjects.Remove(project);
            CompleteEvent?.Invoke(project);
        }

    }
}
