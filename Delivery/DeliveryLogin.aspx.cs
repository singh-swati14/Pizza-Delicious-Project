using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Pizza_Website.Delivery
{
    public partial class DeliveryLogin : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DeliveryId"] != null)
            {
                Response.Redirect("~/Delivery/DeliveryDashboard.aspx");
            }

            if (!IsPostBack)
            {
                DatabaseHelper.InitializeDatabase();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (string.IsNullOrWhiteSpace(email) || string.IsNullOrWhiteSpace(password))
            {
                ShowMessage("Please enter email and password.", false);
                return;
            }

            try
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                string query = "SELECT DeliveryId, FullName, Email, Mobile, VehicleNumber, Status FROM DeliveryStaff " +
                               "WHERE Email='" + email + "' AND Password='" + password + "'";

                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    string status = dr["Status"].ToString();

                    if (status.Equals("Offline", StringComparison.OrdinalIgnoreCase))
                    {
                        ShowMessage("This delivery account is currently Offline. Ask admin to change the status.", false);

                        dr.Close();
                        con.Close();
                        return;
                    }

                    Session["DeliveryId"] = dr["DeliveryId"].ToString();
                    Session["DeliveryName"] = dr["FullName"].ToString();
                    Session["DeliveryEmail"] = dr["Email"].ToString();
                    Session["DeliveryMobile"] = dr["Mobile"].ToString();
                    Session["DeliveryVehicle"] = dr["VehicleNumber"].ToString();

                    dr.Close();
                    con.Close();

                    Response.Redirect("~/Delivery/DeliveryDashboard.aspx");
                }
                else
                {
                    ShowMessage("Invalid delivery email or password.", false);

                    dr.Close();
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                ShowMessage("Delivery Login Error: " + ex.Message, false);
            }
        }

        private void ShowMessage(string message, bool success)
        {
            lblMessage.Text = message;
            lblMessage.CssClass = success ? "alert alert-success d-block mb-3" : "alert alert-danger d-block mb-3";
        }
    }
}
