using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LifeRunner.Model
{
    class Priority
    {
        private static List<PriorityLevel> _Priority;
        public enum PriorityLevel
        {
            Hight,
            Middle,
            Low
        }

        public static List<PriorityLevel> GetPriorityList()
        {
            _Priority = new List<Priority.PriorityLevel>();
            _Priority = Enum.GetValues(typeof(Priority.PriorityLevel)).Cast<Priority.PriorityLevel>().ToList();

            return _Priority;
        }
    }
}
