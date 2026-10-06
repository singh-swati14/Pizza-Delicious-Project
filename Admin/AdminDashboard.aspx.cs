using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Pizza_Website.Admin
{
    public partial class AdminDashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminId"] == null)
            {
                Response.Redirect("~/Admin/AdminLogin.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadTotalUsersCount();
            }
        }

        private void LoadTotalUsersCount()
        {
            try
            {
                using (SqlConnection con = DatabaseHelper.GetConnection())
                {
                    con.Open();
                    string query = "SELECT COUNT(*) FROM Users";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        int userCount = (int)cmd.ExecuteScalar();
                        litTotalUsers.Text = userCount.ToString();
                    }
                }
            }
            catch (Exception)
            {
                litTotalUsers.Text = "0";
            }
        }
    }
}
