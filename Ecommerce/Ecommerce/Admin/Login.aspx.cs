using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonSignup_Click(object sender, EventArgs e) {


            SqlDataSource2.InsertCommand = "INSERT INTO [Users] ([Id],[Name],[Password],[phoneNumber],[Type],[Active]) VALUES ('" + "11" + "','" + TextBox1f.Text + "','" + TextBox1fpass.Text + "','" + TextBox2f2.Text + "','" + "user" + "','"+"1"+"')";          
            int rowsAffected = SqlDataSource2.Insert();
            LabelSignup.Text = "تم الإضافة بنجاح";

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            LabelMessage.Text = "";

            DataView DV = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            

                if (TextBoxPassword.Text == DV.Table.Rows[0].ItemArray[2].ToString())
                {

                if (DV.Table.Rows[0].ItemArray[5].ToString() == "1")
                {
                    Session.Add("UserName", TextBoxUserName.Text);
                    Session.Add("UserType", DV.Table.Rows[0].ItemArray[4].ToString());

                    if (CheckBoxLogin.Checked == true)
                    {
                        Response.Cookies.Add(new HttpCookie("UserName", TextBoxUserName.Text));
                        Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(11);
                    }
                    Response.Redirect("AddProduct.aspx");
                }
                else
                    LabelMessage.Text = "هذا الحساب غير مفعل";

            }
                else
                    LabelMessage.Text = "كلمة المرور غير صحيحة";
           
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void TextBox1fpass_TextChanged(object sender, EventArgs e)
        {

        }
    }
}


    