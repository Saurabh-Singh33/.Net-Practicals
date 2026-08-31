using System;
using System.Web;

namespace AcademicLeaveManagement
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            if (username == "student" && password == "1234")
            {
                Session["Username"] = username;

                HttpCookie cookie = new HttpCookie("StudentCookie");
                cookie["Username"] = username;
                cookie.Expires = DateTime.Now.AddDays(7);

                Response.Cookies.Add(cookie);

                Response.Redirect("LeaveApplication.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid Username or Password!";
            }
        }
    }
}