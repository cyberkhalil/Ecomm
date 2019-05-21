using System;

namespace Ecommerce.Admin
{
    public partial class Orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e) { }

        protected void Button1_Click(object sender, EventArgs e) { GridView2.Visible = !GridView2.Visible; }
    }
}