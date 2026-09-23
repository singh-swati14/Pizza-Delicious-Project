using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Pizza_Website
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (email == "" || password == "")
            {
                lblLoginMessage.Text = "Please enter email and password.";
                lblLoginMessage.CssClass = "alert alert-danger d-block mb-3";
                return;
            }

            try
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                string query = "SELECT UserId, FullName, Email, Status FROM Users WHERE Email = '"
                               + email + "' AND Password = '" + password + "'";

                SqlDataAdapter da = new SqlDataAdapter(query, con);

                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    string status = dt.Rows[0]["Status"].ToString();

                    if (status == "Active")
                    {
                        Session["UserId"] = dt.Rows[0]["UserId"].ToString();
                        Session["UserName"] = dt.Rows[0]["FullName"].ToString();
                        Session["UserEmail"] = dt.Rows[0]["Email"].ToString();
                        Session["UserRole"] = "User";

                        Response.Redirect("~/User/UserDashboard.aspx");
                    }
                    else
                    {
                        lblLoginMessage.Text = "Your account is inactive.";
                        lblLoginMessage.CssClass = "alert alert-warning d-block mb-3";
                    }
                }
                else
                {
                    lblLoginMessage.Text = "Invalid email or password.";
                    lblLoginMessage.CssClass = "alert alert-danger d-block mb-3";
                }

                con.Close();
            }
            catch (Exception ex)
            {
                lblLoginMessage.Text = "Login Error: " + ex.Message;
                lblLoginMessage.CssClass = "alert alert-danger d-block mb-3";
            }
        }
    }
}