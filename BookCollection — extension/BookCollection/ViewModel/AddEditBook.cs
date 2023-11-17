using BookCollection.Model;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Xml.Linq;

namespace BookCollection.ViewModel
{
    public class AddEditBook : ObservableObject, IDataErrorInfo
    {
        IBookService bookService;
        public string author;
        public string title;
        public int yearPublication;
        public Theme theme;
        public Dictionary<string, string> ErrorCollection { get; private set; } = new Dictionary<string, string>();
        public string Error
        {
            get { return ""; }
        }
        public string this[string columnName] //Обработка ошибок для свойств author и yearPublication
        {
            get
            {
                string error = String.Empty;
                switch (columnName)
                {
                    case "Author":
                        if (string.IsNullOrWhiteSpace(Author))
                        {
                            error = "Поле не может быть пустым";
                        }
                        else if (Author.Length < 2)
                        {
                            error = "Автор не может быть менее 2 символов";
                        }
                        break;
                    case "YearPublication":
                        if ((YearPublication < 0) || (YearPublication > int.Parse(DateTime.Now.ToShortDateString().Remove(0, 6))))
                        {
                            error = $"Год должен быть больше 0 и меньше {int.Parse(DateTime.Now.ToShortDateString().Remove(0, 6))}";
                        }
                        else if (YearPublication.ToString().Length < 1)
                        {
                            error = "Поле не может быть пустым";
                        }                        
                        break;
                    case "Title":
                        if (string.IsNullOrWhiteSpace(Title))
                        {
                            error = "Поле не может быть пустым";
                        }
                        /*else if (Title.Length < 2)
                        {
                            error = "Название не может быть менее 2 символов";
                        }*/
                        break;
                }
                if (ErrorCollection.ContainsKey(columnName))
                {
                    ErrorCollection[columnName] = error;
                }
                else if (error != null)
                {
                    ErrorCollection.Add(columnName, error);
                }
                PropertyChanging("ErrorCollection");
                return error;
            }
        }

        public AddEditBook()
        {
            bookService = new BookTxtService();
            if (BookViewModel.selectedItem != null)
            {
                Author = BookViewModel.selectedItem.Author;
                Title = BookViewModel.selectedItem.Title;
                YearPublication = BookViewModel.selectedItem.YearPublication;
                Theme = BookViewModel.selectedItem.Theme;
            }
        }

        /*public AddEditBook(IBookService bookService)
        {
            this.bookService = bookService;
        }*/


        public ICommand CloseButton
        {
            get
            {
                return new ButtonsCommand(() =>
                {
                    if (BookViewModel.addBook != null)
                        BookViewModel.addBook.Close();
                    if (BookViewModel.updateBook != null)
                        BookViewModel.updateBook.Close();
                });
            }
        }
        public ICommand UpdateButton
        {
            get
            {
                return new ButtonsCommand(
              () =>
              {
                  Book book = new Book() { Author = author, Title = title, YearPublication = yearPublication, Theme = theme };
                  bookService.UpdateBook(book, BookViewModel.selectedItem.Id);
                  BookViewModel.updateBook.Close();
              });
            }
        }
        public ICommand AddButton
        {
            get
            {
                return new ButtonsCommand(
                () =>
                {
                    Book book = new Book() { Author = author, Title =title, YearPublication = yearPublication, Theme = theme };
                    bookService.AddBook(book);
                    BookViewModel.addBook.Close();
              });
            }
        }
        public string Author
        {
            get { return author; }
            set
            {
                author = value;
                PropertyChanging("Author");
            }
        }
        public string Title
        {
            get { return title; }
            set
            {
                title = value;
                PropertyChanging("Title");
            }
        }
        public int YearPublication
        {
            get { return yearPublication; }
            set
            {
                yearPublication = value;
                PropertyChanging("YearPublication");
            }
        }
        public Theme Theme
        {
            get { return theme; }
            set
            {
                theme = value;
                PropertyChanging("Theme");
            }
        }
    }
}
