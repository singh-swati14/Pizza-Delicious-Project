using System;
<<<<<<< HEAD
using System.Data.SqlClient;
=======
>>>>>>> f6d00a40191ed24fd0b3230de093c32c2e8f5c09
using System.Web.UI;

namespace Pizza_Website.Delivery
{
    public partial class DeliveryProfile : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
<<<<<<< HEAD
            if (Session["DeliveryId"] == null)
            {
                Response.Redirect("~/Delivery/DeliveryLogin.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadProfile();
            }
        }

        private void LoadProfile()
        {
            try
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                string query = "SELECT FullName, Email, Mobile, VehicleNumber, Address, Status FROM DeliveryStaff WHERE DeliveryId = " +
                               Convert.ToInt32(Session["DeliveryId"]);

                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    txtName.Text = dr["FullName"].ToString();
                    txtEmail.Text = dr["Email"].ToString();
                    txtPhone.Text = dr["Mobile"].ToString();
                    txtVehicle.Text = dr["VehicleNumber"].ToString();
                    txtAddress.Text = dr["Address"].ToString();

                    if (ddlStatus.Items.FindByValue(dr["Status"].ToString()) != null)
                    {
                        ddlStatus.SelectedValue = dr["Status"].ToString();
                    }
                }

                dr.Close();
                con.Close();
            }
            catch (Exception ex)
            {
                ShowMessage("Profile Error: " + ex.Message, false);
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                int deliveryId = Convert.ToInt32(Session["DeliveryId"]);

                string query = "UPDATE DeliveryStaff SET FullName='" + txtName.Text.Trim() +
                               "', Email='" + txtEmail.Text.Trim() +
                               "', Mobile='" + txtPhone.Text.Trim() +
                               "', VehicleNumber='" + txtVehicle.Text.Trim() +
                               "', Address='" + txtAddress.Text.Trim() +
                               "', Status='" + ddlStatus.SelectedValue + "'";

                if (!string.IsNullOrWhiteSpace(txtPassword.Text))
                {
                    query += ", Password='" + txtPassword.Text.Trim() + "'";
                }

                query += " WHERE DeliveryId=" + deliveryId;

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                con.Close();

                Session["DeliveryName"] = txtName.Text.Trim();

                ShowMessage("Profile updated successfully.", true);
            }
            catch (Exception ex)
            {
                ShowMessage("Profile Error: " + ex.Message, false);
            }
        }

        private void ShowMessage(string message, bool success)
        {
            lblMessage.Text = message;
            lblMessage.CssClass = success ? "alert alert-success d-block mb-3" : "alert alert-danger d-block mb-3";
=======
>>>>>>> f6d00a40191ed24fd0b3230de093c32c2e8f5c09
        }
    }
}
