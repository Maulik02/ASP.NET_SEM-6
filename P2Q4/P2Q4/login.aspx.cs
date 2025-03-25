using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace P2Q4
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\smitd\OneDrive\Documents\Customers.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("SELECT [CustName] FROM [Customers] WHERE [Email] = @Email", con);
            cmd.Parameters.AddWithValue("Email", TextBox2.Text);
            con.Open();
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                dr.Read();
                Session["CustName"] = dr["CustName"].ToString();
                Response.Redirect("index.aspx");
            }
            else
            {
                // Handle invalid login
            }
            con.Close();
        }
    }
}
