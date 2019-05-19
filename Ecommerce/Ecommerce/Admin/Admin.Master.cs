using System;

namespace Ecommerce.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null || Session["UserType"].Equals("user"))
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}