using System;
using System.Collections.Generic;
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
using System.Windows.Shapes;

namespace OOO_Sport_Goods.Windows_
{
    /// <summary>
    /// Логика взаимодействия для Goods.xaml
    /// </summary>
    public partial class Goods : Window
    {
        Classes_.DB db = new Classes_.DB();
        public static string role = "", s1 = "", n1 = "", p1 = "";
        List<string[]> lst = new List<string[]>();
        int max = 0;
        Button oldButton = new Button();
        string ab = "";
        public Goods() //конструктор класса для гостя
        {
            InitializeComponent();
            LoadList("SELECT * FROM [Product]", 13);
            max = lst.Count;
            GoodsCreator();
            db.ComboLoad(cmb_manuf, "SELECT DISTINCT [ProductManufacturer] FROM [Product]", "ProductManufacturer");
            


        }
        public Goods(string s, string n, string p) //конструктор для юзеров
        {
            s1 = s; n1 = n; p1 = p;
            InitializeComponent();
            if (role == "1") st_left.Visibility = Visibility.Visible;
            else st_left.Visibility = Visibility.Collapsed;
            txt_fio.Text = s + " " + n + " " + p;
            LoadList("SELECT * FROM [Product]", 13);
            max = lst.Count;
            GoodsCreator();
            db.ComboLoad(cmb_manuf, "SELECT DISTINCT [ProductManufacturer] FROM [Product]", "ProductManufacturer");

        }
        private void LoadList(string s, int k)
        {
            lst.Clear();
            lst = db.ReturnList(s,k);
        }
        private void GoodsCreator()
        {
            txt_col.Text = lst.Count.ToString() + " из " + max.ToString();
            st_main.Children.Clear();
            for (int i = 0; i<lst.Count; i++)
            {
                Button btn_good = new Button {Height = 100, Width = st_main.Width - 10, Margin = new Thickness(5), Background = Brushes.White, HorizontalAlignment = HorizontalAlignment.Left, Tag = lst[i][0] };
                st_main.Children.Add(btn_good);
                StackPanel st_good = new StackPanel {Orientation = Orientation.Horizontal };
                btn_good.Content = st_good;
                btn_good.Click += Btn_good_Click;
                Image img = new Image { Margin = new Thickness(5), Width=90 };
                if (lst[i][4] == "") img.Source = new BitmapImage(new Uri(Environment.CurrentDirectory +@"/img/picture.png"));
                else img.Source = new BitmapImage(new Uri(Environment.CurrentDirectory + @"/img/" + lst[i][4]));
                st_good.Children.Add(img);
                Border bor_midl = new Border {BorderBrush = Brushes.Black, BorderThickness = new Thickness(2), Margin = new Thickness(5), Height = 86, Width = 330 };
                st_good.Children.Add(bor_midl);
                StackPanel st_midl = new StackPanel {Margin = new Thickness(2) };
                bor_midl.Child = st_midl;
                TextBlock tb1 = new TextBlock {Text = lst[i][1], Margin = new Thickness(2), FontWeight = FontWeights.Bold };
                st_midl.Children.Add(tb1);
                TextBlock tb2 = new TextBlock { Text = lst[i][5], Margin = new Thickness(2) };
                st_midl.Children.Add(tb2);
                TextBlock tb3 = new TextBlock { Text = lst[i][7], Margin = new Thickness(2) };
                st_midl.Children.Add(tb3);

                Border bor_right = new Border { BorderBrush = Brushes.Black, BorderThickness = new Thickness(2), Margin = new Thickness(5), Height = 86, Width = 100 };
                st_good.Children.Add(bor_right);
                StackPanel st_right = new StackPanel { Margin = new Thickness(2), VerticalAlignment = VerticalAlignment.Center };
                bor_right.Child = st_right;
                TextBlock tb4 = new TextBlock { Text = lst[i][9], Margin = new Thickness(2), TextAlignment = TextAlignment.Center };
                st_right.Children.Add(tb4);
                if (Convert.ToInt32(lst[i][9]) < 1) btn_good.Background = Brushes.Gray;


            }
        }

        private void Btn_good_Click(object sender, RoutedEventArgs e)
        {
            
            oldButton.Background = Brushes.White;
            oldButton = (sender as Button);
            (sender as Button).Background = Brushes.Green;
            ab = (sender as Button).Tag.ToString();
        }

        private void Window_Closed(object sender, EventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void cmb_manuf_DropDownClosed(object sender, EventArgs e)
        {
            if (cmb_manuf.SelectedIndex == -1)
            {

            }
            else if (cmb_manuf.SelectedIndex == 0)
            {
                LoadList("SELECT * FROM [Product]", 13);
                GoodsCreator();
            }
            else
            {
                LoadList("SELECT * FROM [Product] WHERE [ProductManufacturer]=N'"+cmb_manuf.Text+"'", 13);
                GoodsCreator();
            }
        }

        private void cmb_price_DropDownClosed(object sender, EventArgs e)
        {
            if (cmb_price.SelectedIndex == 0)
            {
                LoadList("SELECT * FROM [Product] ORDER BY [ProductCost] ASC", 13);
                GoodsCreator();
            }
            else
            {
                LoadList("SELECT * FROM [Product] ORDER BY [ProductCost] DESC", 13);
                GoodsCreator();
            }
        }

        private void tb_good_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (c1.IsChecked==true)
            {
                LoadList("SELECT * FROM [Product] WHERE [ProductName] LIKE N'%" + tb_good.Text + "%'", 13);
                GoodsCreator();
            }
            
        }

        private void tb_discr_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (c2.IsChecked == true)
            {
                LoadList("SELECT * FROM [Product] WHERE [ProductDescription] LIKE N'%" + tb_discr.Text + "%'", 13);
                GoodsCreator();
            }
        }

        private void tb_man_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (c3.IsChecked == true)
            {
                LoadList("SELECT * FROM [Product] WHERE [ProductManufacturer] LIKE N'%" + tb_man.Text + "%'", 13);
                GoodsCreator();
            }
        }

        private void btn_add_Click(object sender, RoutedEventArgs e)
        {
            EditAdd ea = new EditAdd();
            this.Hide();
            ea.Show();
        }

        private void btn_edit_Click(object sender, RoutedEventArgs e)
        {
            if (ab == "") MessageBox.Show("Вы не выбрали товар((", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            else
            {
                EditAdd ea = new EditAdd(ab);
                this.Hide();
                ea.Show();
            }
        }

        private void btn_del_Click(object sender, RoutedEventArgs e)
        {
            if (ab == "") MessageBox.Show("Вы не выбрали товар((","Error",MessageBoxButton.OK, MessageBoxImage.Error);
            else
            {
                MessageBoxResult result = MessageBox.Show("Точно удаляем???", "Предупреждение", MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (result == MessageBoxResult.Yes)
                {
                    db.NonQuerry("DELETE FROM [OrderProduct] WHERE [ProductArticleNumber]=N'"+ab+"'");
                    db.NonQuerry("DELETE FROM [Product] WHERE [ProductArticleNumber]=N'"+ab+"'");
                    MessageBox.Show("Товар удален", "Успех", MessageBoxButton.OK, MessageBoxImage.Information);
                    LoadList("SELECT * FROM [Product]", 13);
                    GoodsCreator();
                }
            }
        }
    }
}
