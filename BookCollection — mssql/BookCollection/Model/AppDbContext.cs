using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookCollection.Model
{
    public class AppDbContext : DbContext
    {
        public static string connectionStringFile => "ConnectionString.txt";
        public DbSet<Book> Books { get; set; } = null!;
        public AppDbContext()
        {
            Database.EnsureCreated();
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(GetConnectionString(connectionStringFile));
        }
        
        public static string GetConnectionString(string connectionStringFile)
        {
            var streamReader = new StreamReader(connectionStringFile);
            return streamReader.ReadToEnd();
        }
    }
}
