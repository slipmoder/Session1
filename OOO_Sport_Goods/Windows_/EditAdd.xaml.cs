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
    /// Логика взаимодействия для EditAdd.xaml
    /// </summary>
    public partial class EditAdd : Window
    {
        bool flag = false;
        List<string[]> lst2 = new List<string[]>();
        Classes_.DB db = new Classes_.DB();
        public EditAdd()
        {
            InitializeComponent();
        }
        public EditAdd(string article)
        {
            flag = true;
            InitializeComponent();
            lst2 = db.ReturnList("SELECT * FROM [Product] WHERE [ProductArticleNumber]=N'"+ article + "'", 13);
            //tb1.Text = lst2[0][0]; tb2.Text = lst2[0][1]; tb3.Text = lst2[0][2]; tb4.Text = lst2[0][3];
            //tb5.Text = lst2[0][4]; tb6.Text = lst2[0][5]; tb7.Text = lst2[0][6]; tb8.Text = lst2[0][7];
            //tb9.Text = lst2[0][8]; tb10.Text = lst2[0][9]; tb11.Text = lst2[0][10]; tb12.Text = lst2[0][11];
            //tb13.Text = lst2[0][12];
            
            int i = 0;
            foreach (StackPanel st in st_main.Children.OfType<StackPanel>())
            {
                foreach (TextBox tb in st.Children.OfType<TextBox>())
                tb.Text = lst2[0][i];
                i++;
            }
        }

        private void btn_back_Click(object sender, RoutedEventArgs e)
        {
            Goods goo = new Goods(Goods.s1, Goods.n1, Goods.p1);
            this.Hide();
            goo.Show();
        }

        private void btn_save_Click(object sender, RoutedEventArgs e)
        {
            int count = 0;
            foreach (StackPanel st in st_main.Children.OfType<StackPanel>())
            {
                foreach (TextBox tb in st.Children.OfType<TextBox>())
                    if (tb.Text == "" &&  tb.Tag.ToString() != "xx") count++;
            }
            if (count > 0) MessageBox.Show("Заполните обяз. поля","Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            else
            {
                if (flag)
                {
                    try
                    {
                        string cost = tb8.Text.Replace(',','.');
                        db.NonQuerry("UPDATE [Product] SET [ProductArticleNumber]=N'"+tb1.Text+ "', [ProductName]=N'" + tb2.Text + "'," +
                            "[ProductDescription]=N'" + tb3.Text + "', [ProductCategory]=N'" + tb4.Text + "', [Photo]='" + tb5.Text + "'," +
                            "[ProductManufacturer]=N'" + tb6.Text + "', [ProductDeliver]=N'" + tb7.Text + "', [ProductCost]='" + cost + "'," +
                            "[ProductDiscountAmount]='" + tb9.Text + "', [ProductQuantityInStock]='" + tb10.Text + "'," +
                            "[ProductStatus]=N'" + tb11.Text + "', [Unit]=N'" + tb12.Text + "', [MaxDiscount]='" + tb13.Text + "'" +
                            "WHERE [ProductArticleNumber]=N'"+ lst2[0][0] + "'");
                        MessageBox.Show("Успешно изменен", "Успех", MessageBoxButton.OK, MessageBoxImage.Information);
                        btn_back_Click(btn_back, null);
                    }
                    catch(Exception ex)
                    {
                        MessageBox.Show(ex.ToString());
                        MessageBox.Show("Проверьте корректность данных", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
                else
                {
                    try
                    {
                        string cost = tb8.Text.Replace(',', '.');
                        //db.NonQuerry("UPDATE [Product] SET [ProductArticleNumber]=N'" + tb1.Text + "', [ProductName]=N'" + tb2.Text + "'," +
                        //    "[ProductDescription]=N'" + tb3.Text + "', [ProductCategory]=N'" + tb4.Text + "', [Photo]='" + tb5.Text + "'," +
                        //    "[ProductManufacturer]=N'" + tb6.Text + "', [ProductDeliver]=N'" + tb7.Text + "', [ProductCost]='" + cost + "'," +
                        //    "[ProductDiscountAmount]='" + tb9.Text + "', [ProductQuantityInStock]='" + tb10.Text + "'," +
                        //    "[ProductStatus]=N'" + tb11.Text + "', [Unit]=N'" + tb12.Text + "', [MaxDiscount]='" + tb13.Text + "'" +
                        //    "WHERE [ProductArticleNumber]=N'" + lst2[0][0] + "'");
                        db.NonQuerry("INSERT INTO [Product] VALUES (N'" + tb1.Text + "', N'" + tb2.Text + "', N'" + tb3.Text + "'," +
                            "N'" + tb4.Text + "','" + tb5.Text + "', N'" + tb6.Text + "', N'" + tb7.Text + "', '" + cost + "'," +
                            "'" + tb9.Text + "', '" + tb10.Text + "', N'" + tb11.Text + "', N'" + tb12.Text + "', '" + tb13.Text + "')");
                        MessageBox.Show("Успешно добавлен!", "Успех", MessageBoxButton.OK, MessageBoxImage.Information);
                        btn_back_Click(btn_back, null);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.ToString());
                        MessageBox.Show("Проверьте корректность данных", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
            
        }
    }
}
