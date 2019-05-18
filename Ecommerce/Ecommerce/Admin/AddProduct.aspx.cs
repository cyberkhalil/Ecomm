using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce.Admin
{
    public partial class AddProduct : System.Web.UI.Page
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
            TextBoxCalender.Text = Calendar1.SelectedDate.ToLongDateString();
            Calendar1.Visible = false;

        }

        protected void submit_Click(object sender, EventArgs e)
        {//E:\oracle project\WebProject\Ecommerce\Ecommerce\Assets\images\products\whiteShose.jpg
            SqlDataSource1.InsertCommand = "INSERT INTO [Products] ([P_Id],[C_Id],[Name],[pic],[details]) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + "whiteShose.jpg" + "','" + TextBox5.Text + "')";
            //  SqlDataSource1.InsertCommand = "INSERT INTO [Products] ([P_Id],[C_Id],[Name],[edate],[pic],[details]) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBoxCalender.Text + "','" + "whiteShose.jpg" + "','"+TextBox5.Text+ "')";
            int rowsAffected2 = SqlDataSource1.Insert();
            LabelinsertPro.Text = "suc ";
            //TODO add Pic upload file> and Date formate 
        }
    }
}