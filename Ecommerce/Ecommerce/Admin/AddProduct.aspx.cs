using System;

namespace Ecommerce.Admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = !Calendar1.Visible;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBoxCalender.Text = Calendar1.SelectedDate.ToLongDateString();
            Calendar1.Visible = false;
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            // TODO maybe timedate instead of time & calender should be shown with hours and mins

            if (!FileUpload1.HasFile)
            { LabelinsertPro.Text = "إختر ملف لرفعه"; return; }

            string strRealPath = Request.PhysicalApplicationPath + "Assets\\images\\products\\";

            if (!System.IO.Directory.Exists(strRealPath))
            { LabelinsertPro.Text = "المجلد الذي سيحمل فيه الملفات غير موجود على الخادم"; return; }
            if (System.IO.File.Exists(strRealPath + FileUpload1.FileName))
            { LabelinsertPro.Text = "هذا الملف موجود حاول تغيير إسم الملف"; return; }
            if (FileUpload1.PostedFile.ContentLength >= 15000)
            { LabelinsertPro.Text = "اختر صورة بحجم أصغر"; return; }

            string ProductImgFile = strRealPath + FileUpload1.FileName;
            FileUpload1.SaveAs(strRealPath + FileUpload1.FileName);

            SqlDataSource1.InsertCommand = "INSERT INTO [Products] ([P_Id],[C_Id],[Name],[edate],[pic],[details]) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DateTime.Parse(TextBoxCalender.Text) + "','" + ProductImgFile + "','" + TextBox5.Text + "')";
            try
            {
                int rowsAffected1 = SqlDataSource1.Insert();
                LabelinsertPro.Text = "تم الإضافة بنجاح";
            }
            catch (Exception ex) { LabelinsertPro.Text = ex.Message; }
        }
    }
}