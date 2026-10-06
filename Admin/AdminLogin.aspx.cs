using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Pizza_Website.Admin
{
    public partial class AdminLogin : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DatabaseHelper.InitializeDatabase();
            }
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            string username = txtAdminUsername.Text.Trim();
            string password = txtAdminPassword.Text.Trim();

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                lblAdminMessage.Text = "Please enter admin username and password.";
                lblAdminMessage.CssClass = "alert alert-danger d-block mb-3";
                return;
            }

            try
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                string query = "SELECT AdminId, FullName, Email, Status FROM Admins WHERE Username = '" +
                               username + "' AND Password = '" + password + "'";

                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    string status = dr["Status"].ToString();

                    if (status.Equals("Active", StringComparison.OrdinalIgnoreCase))
                    {
                        Session["AdminId"] = dr["AdminId"].ToString();
                        Session["AdminName"] = dr["FullName"].ToString();
                        Session["AdminEmail"] = dr["Email"].ToString();
                        Session["AdminRole"] = "Admin";

                        dr.Close();
                        con.Close();

                        Response.Redirect("~/Admin/AdminDashboard.aspx");
                    }
                    else
                    {
                        lblAdminMessage.Text = "Your admin account is inactive.";
                        lblAdminMessage.CssClass = "alert alert-warning d-block mb-3";
                    }
                }
                else
                {
                    lblAdminMessage.Text = "Invalid admin username or password.";
                    lblAdminMessage.CssClass = "alert alert-danger d-block mb-3";
                }

                dr.Close();
                con.Close();
            }
            catch (Exception ex)
            {
                lblAdminMessage.Text = "Admin Login Error: " + ex.Message;
                lblAdminMessage.CssClass = "alert alert-danger d-block mb-3";
            }
        }
    }
}
