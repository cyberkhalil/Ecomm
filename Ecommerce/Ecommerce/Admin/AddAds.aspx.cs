using System;

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

            TextBoxCalender.Text = Calendar1.SelectedDate.ToLongDateString();
            Calendar1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            /*SqlDataSource1.InsertCommand =
                "INSERT INTO[Ads] ([Id_ads],[details_ads],[date_ads],[pic_ads])" +
                " VALUES" +
                " ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DateTime.Parse(TextBoxCalender.Text) + "','" + "whiteShose.jpg" + "')";
          */
            SqlDataSource1.InsertCommand =
                 "INSERT INTO[Ads] ([Id_ads],[details_ads],[pic_ads])" +
                 " VALUES" +
                 " ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + "whiteShose.jpg" + "')";
            // TODO  upload file   and format Calender date

            int rowsAffected2 = SqlDataSource1.Insert();
            Label1.Text = "suc ";

        }
    }
}