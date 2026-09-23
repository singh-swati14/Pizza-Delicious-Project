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
                using (SqlConnection con = DatabaseHelper.GetConnection())
                {
                    con.Open();
                    string query = "SELECT AdminId, FullName, Email, Status FROM Admins WHERE Username = @Username AND Password = @Password";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Username", username);
                        cmd.Parameters.AddWithValue("@Password", password);

                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);

                            if (dt.Rows.Count > 0)
                            {
                                string status = dt.Rows[0]["Status"].ToString();
                                if (status.Equals("Active", StringComparison.OrdinalIgnoreCase))
                                {
                                    Session["AdminId"] = dt.Rows[0]["AdminId"].ToString();
                                    Session["AdminName"] = dt.Rows[0]["FullName"].ToString();
                                    Session["AdminEmail"] = dt.Rows[0]["Email"].ToString();
                                    Session["AdminRole"] = "Admin";

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
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lblAdminMessage.Text = "Admin Login Error: " + ex.Message;
                lblAdminMessage.CssClass = "alert alert-danger d-block mb-3";
            }
        }
    }
}
