using System;

namespace Ecommerce.Admin
{
    public partial class EditAndAddCategories_aspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertCommand = "INSERT INTO [Categories] ([C_Id], [C_Name]) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "')";
            try {
                int rowsAffected = SqlDataSource1.Insert();

                LabelMessage.Text = "add is suc";
            }
            catch (Exception ex) {

                LabelMessage.Text = ex.Message;

            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}