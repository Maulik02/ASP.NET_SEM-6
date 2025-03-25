using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace P2Q4
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\smitd\OneDrive\Documents\Customers.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd;
        SqlDataAdapter adpt;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CustName"] != null)
            {
                Label1.Text = Session["CustName"].ToString();
            }
            else
            {
                Label1.Text = "Guest";
            }

            if (!IsPostBack)
            {
                Print();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("INSERT INTO [Customers] ([CustName], [Email], [Address], [City]) VALUES (@CustName, @Email, @Address, @City)", con);
            cmd.Parameters.AddWithValue("CustName", TextBox1.Text);
            cmd.Parameters.AddWithValue("Email", TextBox2.Text);
            cmd.Parameters.AddWithValue("Address", TextBox3.Text);
            cmd.Parameters.AddWithValue("City", TextBox4.Text);
            con.Open();
            int res = cmd.ExecuteNonQuery();
            con.Close();
            if (res == 1)
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                Label1.Text = "Customer added successfully";
                Print();
            }
        }

        private void Print()
        {
            adpt = new SqlDataAdapter("SELECT [CustomerId], [CustName], [Email], [Address], [City] FROM [Customers]", con);
            dt = new DataTable();
            adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}
