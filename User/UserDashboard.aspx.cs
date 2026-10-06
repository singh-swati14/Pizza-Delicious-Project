using System;
using System.Web.UI;

namespace Pizza_Website.User
{
    public partial class UserDashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("~/Login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                if (Session["UserName"] != null)
                {
                    litDashboardUserName.Text = Session["UserName"].ToString();
                }
            }
        }
    }
}
