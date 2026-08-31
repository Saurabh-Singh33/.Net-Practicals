using System;
using System.Web;

namespace AcademicLeaveManagement
{
    public partial class LeaveApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                lblWelcome.Text =
                    "Welcome, " + Session["Username"].ToString();

                HttpCookie cookie =
                    Request.Cookies["StudentCookie"];

                if (cookie != null)
                {
                    string username = cookie["Username"];

                    lblWelcome.Text =
                        "Welcome, " + username;
                }
            }
        }

        protected void calLeaveDate_SelectionChanged(
            object sender, EventArgs e)
        {
            DateTime selectedDate =
                calLeaveDate.SelectedDate;

            lblSelectedDate.Text =
                "Selected Leave Date: " +
                selectedDate.ToString("dd-MM-yyyy");
        }

        protected void btnSubmit_Click(
            object sender, EventArgs e)
        {
            string application =
                txtApplication.Text;

            DateTime leaveDate =
                calLeaveDate.SelectedDate;

            if (string.IsNullOrWhiteSpace(application))
            {
                lblMessage.Text =
                    "Please write your leave application.";

                return;
            }

            if (leaveDate == DateTime.MinValue)
            {
                lblMessage.Text =
                    "Please select a leave date.";

                return;
            }

            lblMessage.Text =
                "Leave Application Submitted Successfully!" +
                "<br/>Date: " +
                leaveDate.ToString("dd-MM-yyyy") +
                "<br/>Application: " +
                application;
        }

        protected void btnLogout_Click(
            object sender, EventArgs e)
        {
            Session.Clear();

            if (Request.Cookies["StudentCookie"] != null)
            {
                HttpCookie cookie =
                    new HttpCookie("StudentCookie");

                cookie.Expires =
                    DateTime.Now.AddDays(-1);

                Response.Cookies.Add(cookie);
            }

            Response.Redirect("Login.aspx");
        }
    }
}