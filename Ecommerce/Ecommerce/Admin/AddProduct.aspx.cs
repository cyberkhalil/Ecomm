using System;

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
        {
            // TODO maybe timedate instead of time & calender should be shown with hours and mins
            SqlDataSource1.InsertCommand = "INSERT INTO [Products] ([P_Id],[C_Id],[Name],[edate],[pic],[details]) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DateTime.Parse(TextBoxCalender.Text) + "','" + "whiteShose.jpg" + "','" + TextBox5.Text + "')";
            int rowsAffected2 = SqlDataSource1.Insert();
            LabelinsertPro.Text = "suc ";
            //TODO add Pic upload file> and Date formate 
            //TODO add Pic upload file> and Date formate 
            string strRealPath;
            strRealPath = Request.PhysicalApplicationPath;
            strRealPath += "Assets\\images\\products\\";
            // file upload
            /* if (FileUpload1.HasFile)
             {
                 if (System.IO.Directory.Exists(strRealPath))
                 {
                     if (!System.IO.File.Exists(strRealPath + FileUpload1.FileName))
                     {
                         if (FileUpload1.PostedFile.ContentLength < 15000)
                         {
                             FileUpload1.SaveAs(strRealPath + FileUpload1.FileName);

                             SqlDataSource1.InsertParameters.Add("pic", FileUpload1.FileName.ToString());

                             int rowsAffected = SqlDataSource1.Insert();

                             LabelinsertPro.Text = "تم الإضافة بنجاح";
                         }
                         else
                         {
                             LabelinsertPro.Text = "حجم الملف أكبر من 15000";
                         }
                     }
                     else
                     {
                         LabelinsertPro.Text = "هذا الملف موجود حاول تغيير إسم الملف";
                     }
                 }
                 else
                 {
                     LabelinsertPro.Text = "المجلد الذي سيحمل فيه الملفات غير موجود على الخادم";
                 }
             }
             else
             {
                 LabelinsertPro.Text = "إختر ملف لرفعه";
             }

             LabelinsertPro.Text = "<font color=red><B>" + LabelinsertPro.Text + "</B></font>";

             if (FileUpload1.HasFile)
             {
                 if (System.IO.Directory.Exists(strRealPath))
                 {
                     if (!System.IO.File.Exists(strRealPath + FileUpload1.FileName))
                     {
                         if (FileUpload1.PostedFile.ContentLength < 15000)
                         {
                             FileUpload1.SaveAs(strRealPath + FileUpload1.FileName);

                             SqlDataSource1.InsertParameters.Add("pic", FileUpload1.FileName.ToString());

                             int rowsAffected = SqlDataSource1.Insert();

                             LabelinsertPro.Text = "تم الإضافة بنجاح";
                         }
                         else
                         {
                             LabelinsertPro.Text = "حجم الملف أكبر من 15000";
                         }
                     }
                     else
                     {
                         LabelinsertPro.Text = "هذا الملف موجود حاول تغيير إسم الملف";
                     }
                 }
                 else
                 {
                     LabelinsertPro.Text = "المجلد الذي سيحمل فيه الملفات غير موجود على الخادم";
                 }
             }
             else
             {
                 LabelinsertPro.Text = "إختر ملف لرفعه";
             }

             LabelinsertPro.Text = "<font color=red><B>" + LabelinsertPro.Text + "</B></font>";
             */
        }
    }
}