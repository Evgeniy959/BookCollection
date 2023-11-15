using BookCollection.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace BookCollection.ViewModel
{
    public interface IBookService
    {
        List<Book> GetAllBooks();
        void AddBook(Book book);
        void UpdateBook(Book book, int id);
        void DeleteBook(Book book);
        List<Book> SortAuthor();
        List<Book> SortYear();
    }
}
