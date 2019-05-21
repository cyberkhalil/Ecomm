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
            else
            {
                LabelUser.Text = Session["UserName"].ToString();

                MultiView1.ActiveViewIndex = 0;

            }


        }
        protected void ButtonLogout_Click(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            Response.Redirect("login.aspx");
        }
    }
}