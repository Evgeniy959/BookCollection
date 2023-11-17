using BookCollection.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls.Primitives;
using static System.Reflection.Metadata.BlobBuilder;

namespace BookCollection.ViewModel
{
    public class BookDbService : IBookService
    {
        AppDbContext db;
        /*public static AddBook addBook;
        public static UpdateBook updateBook;*/

        public BookDbService()
        {
            db = new AppDbContext();
            
        }
        public void AddBook(Book book)
        {
            try
            {
                db.Books.Add(book);
                db.SaveChanges();
            }
            catch 
            {
                MessageBox.Show("Заполните все поля");
            }            
        }

        public void DeleteBook(Book book)
        {
            throw new NotImplementedException();
        }

        public List<Book> GetAllBooks()
        {
            return db.Books.ToList();
        }

        public List<Book> SortAuthor()
        {
            return db.Books.OrderBy(x => x.Author).ToList();
        }

        public List<Book> SortYear()
        {
            return db.Books.OrderBy(x => x.YearPublication).ToList();
        }

        public void UpdateBook(Book book, int id)
        {
            Book editBook = db.Books.Find(id);
            editBook.Author = book.Author;
            editBook.Title = book.Title;
            editBook.YearPublication = book.YearPublication;
            editBook.Theme = book.Theme;
            /*db.Entry(update).State = EntityState.Modified;
            db.Books.Update(update);*/
            db.SaveChanges();
        }
    }
}
