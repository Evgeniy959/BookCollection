using BookCollection.Model;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls.Primitives;
using System.Windows.Input;
using static System.Net.Mime.MediaTypeNames;
using static System.Reflection.Metadata.BlobBuilder;

namespace BookCollection.ViewModel
{
    public class BookViewModel : ObservableObject
    {
        IBookService bookService; // interface для абстракции от конкретной системы хранения
        AppDbContext db = new AppDbContext();
        bool rb1;
        bool rb2;
        public static AddBook addBook;
        public static UpdateBook updateBook;
        List<Book> books;
        public static Book selectedItem;

        public BookViewModel()
        {
            bookService = new BookDbService(); 
            RefreshData();
        }

        public Book SelectedItem
        {
            get { return selectedItem; }
            set
            {
                selectedItem = value;
                PropertyChanging("SelectedItem");
            }
        }
        public List<Book> Books
        {
            get { return books; }
            set
            {
                //books = value;
                books = new List<Book> (Books);
                PropertyChanging("Books");
            }
        }
        public bool Rb1
        {
            get { return rb1; }
            set
            {
                rb1 = value;
                PropertyChanging("Rb1");
                RefreshData();

            }
        }
        public bool Rb2
        {
            get { return rb2; }
            set
            {
                rb2 = value;
                PropertyChanging("Rb2");
                RefreshData();
            }
        }
        public ICommand AddButton
        {
            get
            {
                return new ButtonsCommand(
              () =>
              {
                  addBook = new AddBook();
                  addBook.ShowDialog();
                  RefreshData();
              }
              );
            }
        }
        public ICommand UpdateButton
        {
            get
            {
                return new ButtonsCommand(
              () =>
              {
                  updateBook = new UpdateBook();
                  updateBook.ShowDialog();
                  selectedItem = new Book() { Author = "", Title = "", YearPublication = 0, Theme = Theme.Romantic };
                  RefreshData();
              }
              );
            }
        }
        public ICommand DeleteButton
        {
            get
            {
                return new ButtonsCommand(
              () =>
              {
                  if (selectedItem != null)
                  {
                      MessageBoxResult result =
                       MessageBox.Show($"Действительно удалить книгу {selectedItem.Title}?", 
                       "Удалить?", MessageBoxButton.YesNo,
                           MessageBoxImage.Question);

                      if (result == MessageBoxResult.Yes)
                      {
                          bookService.DeleteBook(selectedItem);
                          RefreshData();
                      }
                  }
              });
            }
        }

        public void RefreshData()
        {
            if (rb1)
            {
                books = bookService.SortAuthor();
            }
            else if (rb2)
            {
                books = bookService.SortYear();
            }
            else
            {
                books = bookService.GetAllBooks();
            }
            Books = books;
        }
    }
}
