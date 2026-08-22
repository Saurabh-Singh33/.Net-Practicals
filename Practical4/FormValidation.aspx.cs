using System;

namespace Practical4
{
    public partial class FormValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblMessage.Text = "Registration Successful!";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblMessage.Text = "Please correct the errors.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}