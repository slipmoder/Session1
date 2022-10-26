using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace OOO_Sport_Goods.Classes_
{
    internal class DB
    {
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\mssqllocaldb;Initial Catalog=4121Na_sporte;Integrated Security=True");
        public void OpenConnection()
        {
            if (con.State == System.Data.ConnectionState.Closed)
                con.Open();
        }
        public void CloseConnection()
        {
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
        }
        public SqlConnection GetConnection()
        {
            return con;
        }
        public void NonQuerry(string s)
        {
            OpenConnection();
            SqlCommand com = new SqlCommand(s, con);
            com.ExecuteNonQuery();
        }
        public List<string[]> ReturnList(string s, int x)
        {
            List<string[]> list = new List<string[]>();
            OpenConnection();
            SqlCommand com = new SqlCommand(s, con);
            SqlDataReader reader = com.ExecuteReader();
            while (reader.Read())
            {
                list.Add(new string[x]);
                for (int i = 0; i < x; i++) list[list.Count - 1][i] = reader[i].ToString();
            }
            reader.Close();
            CloseConnection();
            return list;
        }
        public string ReturnFromDB(string s)
        {
            OpenConnection();
            SqlCommand com = new SqlCommand(s, con);
            SqlDataReader reader = com.ExecuteReader();
            string a = "";
            while (reader.Read())
            {
                a = reader[0].ToString();
            }
            reader.Close();
            CloseConnection();
            return a;
        }
        public void ComboLoad(ComboBox combo, string s, string c)
        {
            OpenConnection();
            SqlCommand com = new SqlCommand(s, con);
            SqlDataAdapter adapter = new SqlDataAdapter(com);
            DataTable table = new DataTable();
            DataRow MyRow = table.NewRow();
            DataColumn MyColumn = new DataColumn(c);
            table.Columns.Add(MyColumn);
            MyRow[MyColumn] = "Все производители";
            table.Rows.Add(MyRow);
            table.AcceptChanges();
            adapter.Fill(table);
            CloseConnection();
            combo.ItemsSource = table.AsDataView();
            combo.DisplayMemberPath = c;
            combo.SelectedIndex = -1;
        }
    }
}
