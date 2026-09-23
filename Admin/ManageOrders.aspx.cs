using System;
using System.Web.UI;

namespace Pizza_Website.Admin
{
    public partial class ManageOrders : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminId"] == null)
            {
                Response.Redirect("~/Admin/AdminLogin.aspx");
                return;
            }
        }
    }
}
