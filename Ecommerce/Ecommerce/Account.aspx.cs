using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //TODO solve problem
          /* SqlDataSource1.UpdateCommand = "UPDATE [Users] SET [Name]="
                + TextBox1.Text +
                ", [phoneNumber] ='" + TextBox2.Text + "',[Password] ='" +
                TextBox3.Text + "' where [Name]=" + Session["UserName"].ToString();
            try
            {
                int rowsAffected1 = SqlDataSource1.Update();
            }
            catch (Exception Ex) {
                Label2.Text = Ex.Message;
            }*/

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
    }
}