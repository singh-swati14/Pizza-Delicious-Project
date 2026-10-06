using System;
using System.Web.UI;

namespace Pizza_Website.User
{
    public partial class UserMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserName"] != null)
                {
                    litUserPortalName.Text = Session["UserName"].ToString();
                }
            }
        }

        protected void btnUserLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Login.aspx");
        }
    }
}
