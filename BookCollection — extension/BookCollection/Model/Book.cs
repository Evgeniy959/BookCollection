using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace BookCollection.Model
{
    public class Book 
    {
        public int Id { get; set; }
        public string Author { get; set; }
        public string Title { get; set; }
        public int YearPublication { get; set; }
        public Theme Theme { get; set; }

    }
}
