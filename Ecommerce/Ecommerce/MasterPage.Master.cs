using System;

namespace Ecommerce
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e) {

            if (Session["UserName"] == null )
            {
                Label1.Text = "Login";
            }
            else {

                Label1.Text = "Logout";

               // Session["UserType"] = null;

            }

        }

        protected void Btn_Log() {
            Session["UserName"] = null;

        }
    }
}