using BookCollection.Model;
using BookCollection.ViewModel;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace BookCollection
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        //AppDbContext db = new AppDbContext();
        /*AppDbContext db = new AppDbContext();
        private ObservableCollection<Book> books;*/
        //private List<string> _books;
        public MainWindow()
        {
            InitializeComponent();
            DataContext = new BookViewModel();
            //db = new AppDbContext();
            //books = new ObservableCollection<Book>();
            //List.ItemsSource = books;
            //_books = new List<string>();
            //Loaded += MainWindow_Loaded;
        }
        /*private void MainWindow_Loaded(object sender, RoutedEventArgs e)
        {*/
            // гарантируем, что база данных создана
            //db.Database.EnsureCreated();
            // загружаем данные из БД
            //db.Books.Load();
            // и устанавливаем данные в качестве контекста
            //books = db.Books.Local.ToObservableCollection();
            //List.ItemsSource = books;
            //DataContext = new Book();
            //DataContext = db.Books.Local.ToObservableCollection();
        //}

        /*private void Add_Click(object sender, RoutedEventArgs e)
        {
            db.Books.Add(new Book() { Author = AddAuthor.Text, Title = AddTitle.Text, YearPublication = int.Parse(AddYear.Text), Theme = (Theme)AddTheme.SelectedIndex });
            db.SaveChanges();
            //books.Add(Add.Text);
        }*/

        /*private void Delete_Click(object sender, RoutedEventArgs e)
        {
            Book? book = List.SelectedItem as Book;
            // если ни одного объекта не выделено, выходим
            if (book is null) return;
            //if (List.SelectedItem != null)
            //{
                MessageBoxResult result =
                 MessageBox.Show("Действительно удалить книгу " +
                    book.Theme + "?", "Удалить?", MessageBoxButton.YesNo,
                     MessageBoxImage.Question);

                if (result == MessageBoxResult.Yes)
                {
                    db.Books.Remove(book);
                    db.SaveChanges();
                }
            //}
                /*if (books.Contains(Delete.Text))
                {
                    books.Remove(Delete.Text);
                }
        }*/
    }
}
