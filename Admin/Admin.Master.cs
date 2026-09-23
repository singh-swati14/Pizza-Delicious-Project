using System;
using System.Web.UI;

namespace Pizza_Website.Admin
{
    public partial class AdminMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAdminLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Admin/AdminLogin.aspx");
        }
    }
}
