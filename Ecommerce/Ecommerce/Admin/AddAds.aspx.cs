using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce.Admin
{
    public partial class AddAds : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = !Calendar1.Visible;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Calendar1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertCommand = "INSERT INTO [Products] ([Id_ads],[pic_ads],[date_ads],[details_ads]) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DateTime.Parse(TextBoxCalender.Text) + "','" + "whiteShose.jpg" + "','" + TextBox5.Text + "')";
            int rowsAffected2 = SqlDataSource1.Insert();
            Label1.Text = "suc ";
        }
    }
}