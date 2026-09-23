using System;
using System.Web.UI;

namespace Pizza_Website
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RenderNavigationState();
            }
        }

        private void RenderNavigationState()
        {
            if (Session["AdminId"] != null)
            {
                phAnonymous.Visible = false;
                phUserLoggedIn.Visible = false;
                phAdminLoggedIn.Visible = true;
            }
            else if (Session["UserId"] != null)
            {
                phAnonymous.Visible = false;
                phAdminLoggedIn.Visible = false;
                phUserLoggedIn.Visible = true;
                litUserName.Text = Session["UserName"] != null ? Session["UserName"].ToString() : "User";
            }
            else
            {
                phAnonymous.Visible = true;
                phUserLoggedIn.Visible = false;
                phAdminLoggedIn.Visible = false;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            bool isAdmin = Session["AdminId"] != null;

            Session.Clear();
            Session.Abandon();

            if (isAdmin)
            {
                Response.Redirect("~/Admin/AdminLogin.aspx");
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}
