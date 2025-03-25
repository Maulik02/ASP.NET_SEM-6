using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace P2Q2
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\smitd\OneDrive\Documents\Products.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd;
        SqlDataAdapter adpt;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            Print();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Button1.Text == "Save")
            {
                cmd = new SqlCommand("INSERT INTO [Products] ([ProductName], [UnitPrice], [UnitsInStock]) VALUES (@ProductName, @UnitPrice, @UnitsInStock)", con);
                cmd.Parameters.AddWithValue("@ProductName", TextBox1.Text);
                cmd.Parameters.AddWithValue("@UnitPrice", TextBox2.Text);
                cmd.Parameters.AddWithValue("@UnitsInStock", TextBox3.Text);
                con.Open();
                int res = cmd.ExecuteNonQuery();
                con.Close();
                if (res == 1)
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    Label1.Text = "Product successfully add";
                    Print();
                }
            }
            else
            {
                cmd = new SqlCommand("UPDATE [Products] SET [ProductName] = @ProductName, [UnitPrice] = @UnitPrice, [UnitsInStock] = @UnitsInStock WHERE [ProductId] = @ProductId", con);
                cmd.Parameters.AddWithValue("ProductName", TextBox1.Text);
                cmd.Parameters.AddWithValue("UnitPrice", TextBox2.Text);
                cmd.Parameters.AddWithValue("UnitsInStock", TextBox3.Text);
                cmd.Parameters.AddWithValue("ProductId", ViewState["ProductId"]);
                con.Open();
                int res = cmd.ExecuteNonQuery();
                con.Close();
                if (res == 1)
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    Label1.Text = "Data udate successfully";
                    Button1.Text = "Save";
                    Print();
                }
            }
        }
        private void Print()
        {
            adpt = new SqlDataAdapter("SELECT [ProductId], [ProductName], [UnitPrice], [UnitsInStock] FROM [Products]", con);
            dt = new DataTable();
            adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            cmd = new SqlCommand("DELETE FROM [Products] WHERE [ProductId] = @ProductId", con);
            cmd.Parameters.AddWithValue("@ProductId", btn.CommandArgument);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Print();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            cmd = new SqlCommand("SELECT [ProductId], [ProductName], [UnitPrice], [UnitsInStock] FROM [Products] WHERE [ProductId] = @ProductId", con);
            cmd.Parameters.AddWithValue("@ProductId", btn.CommandArgument);
            adpt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            TextBox1.Text = dt.Rows[0][1].ToString();
            TextBox2.Text = dt.Rows[0][2].ToString();
            TextBox3.Text = dt.Rows[0][3].ToString();
            ViewState["ProductId"] = btn.CommandArgument;
            Button1.Text = "Update data";
        }
    }
}