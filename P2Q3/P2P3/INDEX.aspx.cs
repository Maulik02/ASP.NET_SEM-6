using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace P2P3
{
    public partial class INDEX : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\smitd\OneDrive\Documents\Employee.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd;
        SqlDataAdapter adpt;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            Print();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("INSERT INTO [Employees] ([EmpName], [DateOfBirth], [Department], [ProfileImage]) VALUES (@EmpName, @DateOfBirth, @Department, @ProfileImage)", con);
            cmd.Parameters.AddWithValue("EmpName", TextBox1.Text); 
            cmd.Parameters.AddWithValue("DateOfBirth", TextBox2.Text); 
            cmd.Parameters.AddWithValue("Department", TextBox3.Text); 
            cmd.Parameters.AddWithValue("ProfileImage", TextBox4.Text);
            con.Open();
            int res = cmd.ExecuteNonQuery();
            con.Close();
            if (res == 1)
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                Label1.Text = "Employee Details successfully add";
                Print();
            }
        }
        private void Print()
        {
            adpt = new SqlDataAdapter("SELECT [EmployeeId], [EmpName], [DateOfBirth], [Department], [ProfileImage] FROM [Employees]", con);
            dt = new DataTable();
            adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}