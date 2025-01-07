using System;
using System.Web.UI;

namespace Q2
{
    public partial class WebForm1 : Page
    {
        protected void RegisterUser(object sender, EventArgs e)
        {
            string username = username.Text;
            string email = email.Text;
            string password = password.Text;
            string confirmPassword = confirmPassword.Text;

            if (password != confirmPassword)
            {
                // Show a message if passwords do not match
                Response.Write("<script>alert('Passwords do not match!');</script>");
                return;
            }

            // Here, you can add your database logic to save the user details
            // Example: SaveUser(username, email, password);

            // Redirect to login page after successful sign-up
            Response.Redirect("Login.aspx");
        }
    }
}
