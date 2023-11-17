using BookCollection.Model;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection.PortableExecutable;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls.Primitives;
using System.Windows.Documents;
using System.Windows.Shapes;
using static System.Net.Mime.MediaTypeNames;

namespace BookCollection.ViewModel
{
    public class BookTxtService : IBookService
    {
        public List<Book> booksId;
        public int currentId;   
        
        public BookTxtService()
        {
            booksId = GetAllBooks();
            if (booksId.Any())
            currentId = booksId.Max(m => m.Id)+1;
            else currentId = 1;

        }
        
        public void AddBook(Book book)
        {
            /*List<Book> books = new List<Book>();
            books.Add(book);*/
            //ExportBook(books);


            StreamWriter fileWriter = new StreamWriter("add_book.txt", true);
            //foreach (var item in books)
            //{
                fileWriter.WriteLine($"{currentId},{book.Author},{book.Title},{book.YearPublication},{book.Theme}");
            //}
            fileWriter.Close();
        }

        public void DeleteBook(Book book)
        {
            var books = GetAllBooks();
            Book bookRemove = books.FirstOrDefault(p => p.Id == book.Id);
            if (books.Contains(bookRemove))
            {
                books.Remove(bookRemove);
                ExportBook(books);
                MessageBox.Show($"{book.Id}-{bookRemove.Id}");
            }
            else MessageBox.Show("Заполните все поля");

        }

        public List<Book> GetAllBooks()
        {
            List<Book> books = new List<Book>();
            var reader = new StreamReader("add_book.txt");
            /*string text = streamReader.ReadToEnd();
            text.Close();*/
            string? line;
            /*if (reader.ReadLine() != null)
            {*/
                while ((line = reader.ReadLine()) != null)
                {
                    string[] words = line.Split(',');
                    books.Add(new Book() { Id = int.Parse(words[0]), Author = words[1], Title = words[2], YearPublication = int.Parse(words[3]), Theme = (Theme)Enum.Parse(typeof(Theme), words[4]) });
                }
                reader.Close();
                return books;
            /*}
            
            else return books;*/
            
        }

        public List<Book> SortAuthor()
        {
            var books = GetAllBooks();
            return books.OrderBy(x => x.Author).ToList();
        }

        public List<Book> SortYear()
        {
            var books = GetAllBooks();
            return books.OrderBy(x => x.YearPublication).ToList();
        }

        public void UpdateBook(Book book, int id)
        {
            var books = GetAllBooks();

            if (id != 0)
            {
                Book editBook = books.FirstOrDefault(b => b.Id==id);
                int index = books.IndexOf(editBook);
                books[index].Id = id;
                books[index].Author = book.Author;
                books[index].Title = book.Title;
                books[index].YearPublication = book.YearPublication;
                books[index].Theme = book.Theme;
                ExportBook(books);
                MessageBox.Show($"{id}-{books[index].Id}");
            }
            else MessageBox.Show("Заполните все поля");
        }

        public void ExportBook(List<Book> books)
        {
            StreamWriter fileWriter = new StreamWriter("add_book.txt", false);
            //{
                foreach (var item in books)
                {
                    fileWriter.WriteLine($"{item.Id},{item.Author},{item.Title},{item.YearPublication},{item.Theme}");
                }
                fileWriter.Close();
            /*foreach (var item in books)
            {
                await fileWriter.WriteAsync($"{item}, ");
            }*/
            //}
        }


    }
}
