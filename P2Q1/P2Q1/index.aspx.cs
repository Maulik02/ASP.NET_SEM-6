using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace P2Q1
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\smitd\OneDrive\Documents\student.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd;
        SqlDataAdapter adpt;


        protected void Page_Load(object sender, EventArgs e)
        {
            Print();
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Button1.Text == "Save")
            {
                cmd = new SqlCommand("INSERT INTO [Student] ([Name], [Age], [Gender]) VALUES (@Name, @Age, @Gender)", con);
                cmd.Parameters.AddWithValue("Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("Age", TextBox2.Text);
                cmd.Parameters.AddWithValue("Gender", RadioButtonList1.SelectedValue);
                con.Open();
                int res = cmd.ExecuteNonQuery();
                con.Close();
                if (res == 1)
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    RadioButtonList1.ClearSelection();
                    Label1.Text = "Data Saved successfully";
                    Print();
                }
            }
            else
            {
                cmd = new SqlCommand("UPDATE [Student] SET [Name] = @Name, [Age] = @Age, [Gender] = @Gender WHERE [Id] = @Id", con);
                cmd.Parameters.AddWithValue("Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("Age", TextBox2.Text);
                cmd.Parameters.AddWithValue("Gender", RadioButtonList1.SelectedValue);
                cmd.Parameters.AddWithValue("Id",ViewState["Id"]);
                con.Open();
                int res = cmd.ExecuteNonQuery();
                con.Close();
                if (res == 1)
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    RadioButtonList1.ClearSelection();
                    Label1.Text = "Data udate successfully";
                    Button1.Text = "Save";
                    Print();
                }
            }
        }

        private void Print()
        {
            adpt = new SqlDataAdapter("SELECT[Id], [Name], [Age], [Gender] FROM[Student]",con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }



        protected void Button2_Click1(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            cmd = new SqlCommand("DELETE FROM [Student] WHERE [Id] = @Id", con); 
            cmd.Parameters.AddWithValue("@Id", btn.CommandArgument);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            Print();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            cmd = new SqlCommand("DELETE FROM [Student] WHERE [Id] = @Id", con);
            cmd.Parameters.AddWithValue("@Id", btn.CommandArgument);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            TextBox1.Text = dt.Rows[0][1].ToString();
            TextBox2.Text = dt.Rows[0][2].ToString();
            RadioButtonList1.Text = dt.Rows[0][3].ToString();
            ViewState["Id"] = btn.CommandArgument;
            Button1.Text = "Update data";
        }
    }
}