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
using System.Windows.Threading;
namespace OOO_Sport_Goods.Windows_
{
    /// <summary>
    /// Логика взаимодействия для Avtorization.xaml
    /// </summary>
    public partial class Avtorization : Window
    {
        Classes_.DB db = new Classes_.DB();
        DispatcherTimer timer = new DispatcherTimer();
        Random rnd = new Random();
        int ticks = 0;
        public Avtorization()
        {
            InitializeComponent();
            st_cap.Visibility = Visibility.Collapsed;
            timer.Interval = new TimeSpan(0,0,0,0,1000);
            timer.Tick += Timer_Tick;
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            
            ticks++;
            if (ticks > 5)
            {
                st_cap.IsEnabled = true;
                ticks = 0;
                Cap_Gen();
                timer.Stop();
            }
        }

        private void btn_sign_Click(object sender, RoutedEventArgs e)
        {
            if (txt_log.Text == "" || txt_pas.Password == "" )
            {
                MessageBox.Show("Заполните все поля", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                string r = db.ReturnFromDB("SELECT [UserRole] FROM [User] WHERE [UserLogin] =N'"+txt_log.Text+"' AND [UserPassword] = N'"+txt_pas.Password+"'");
                if (r != "")
                {
                    Goods.role = r;
                    string s = db.ReturnFromDB("SELECT [UserSurname] FROM [User] WHERE [UserLogin] =N'" + txt_log.Text + "' AND [UserPassword] = N'" + txt_pas.Password + "'");
                    string n = db.ReturnFromDB("SELECT [UserName] FROM [User] WHERE [UserLogin] =N'" + txt_log.Text + "' AND [UserPassword] = N'" + txt_pas.Password + "'");
                    string p = db.ReturnFromDB("SELECT [UserPatronymic] FROM [User] WHERE [UserLogin] =N'" + txt_log.Text + "' AND [UserPassword] = N'" + txt_pas.Password + "'");
                    Goods g = new Goods(s,n,p);
                    this.Hide();
                    g.Show();
                }
                else
                {
                    MessageBox.Show("Неверный логин или пароль", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    st_cap.Visibility = Visibility.Visible;
                    st_auth.Visibility = Visibility.Collapsed;
                    Cap_Gen();
                }
            }
        }

        private void btn_access_Click(object sender, RoutedEventArgs e)
        {
           if (txt_cap.Text == input_cap.Text)
            {
                st_cap.Visibility = Visibility.Collapsed;
                st_auth.Visibility = Visibility.Visible;
            }
            else
            {
                st_cap.IsEnabled = false;
                timer.Start();
            }
        }

        private void btn_refresh_Click(object sender, RoutedEventArgs e)
        {
            Cap_Gen();
        }

        private void btn_guest_Click(object sender, RoutedEventArgs e)
        {
            Goods.role = "0";
            Goods g = new Goods();
            this.Hide();
            g.Show();
        }
        private void Cap_Gen()
        {
            string cc = "!@#$%^&*()_+QWERTYUIOP{}ASDFGHJKL:ZXCVBNM<>?qwertyuiopasdfghjklzxcvbnm";
            txt_cap.Text = "";
            for (int i = 0; i<6; i++)
            {
                txt_cap.Text += cc[rnd.Next(0,cc.Length)];
            }

        }
    }
}
