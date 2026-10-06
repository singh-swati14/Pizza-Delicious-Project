using System;
<<<<<<< HEAD
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
=======
using System.Web.UI;
>>>>>>> f6d00a40191ed24fd0b3230de093c32c2e8f5c09

namespace Pizza_Website.Delivery
{
    public partial class AssignedOrders : Page
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
                LoadOrders();
            }
        }

        private void LoadOrders()
        {
            try
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                string query = "SELECT OrderId, CustomerName, DeliveryAddress, Phone, Amount, OrderStatus FROM Orders " +
                               "WHERE DeliveryId=" + Convert.ToInt32(Session["DeliveryId"]) +
                               " AND OrderStatus NOT IN ('Delivered','Cancelled') ORDER BY OrderId DESC";

                SqlDataAdapter da = new SqlDataAdapter(query, con);

                DataTable dt = new DataTable();
                da.Fill(dt);

                gvOrders.DataSource = dt;
                gvOrders.DataBind();

                con.Close();
            }
            catch (Exception ex)
            {
                ShowMessage("Order Error: " + ex.Message, false);
            }
        }

        protected void gvOrders_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName != "Pickup" && e.CommandName != "Delivered")
            {
                return;
            }

            string status = e.CommandName == "Pickup" ? "Out for Delivery" : "Delivered";

            try
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                int orderId = Convert.ToInt32(e.CommandArgument);
                int deliveryId = Convert.ToInt32(Session["DeliveryId"]);

                string query = "UPDATE Orders SET OrderStatus='" + status +
                               "' WHERE OrderId=" + orderId +
                               " AND DeliveryId=" + deliveryId;

                SqlCommand cmd = new SqlCommand(query, con);

                int n = cmd.ExecuteNonQuery();

                con.Close();

                ShowMessage(n > 0 ? "Order status updated successfully." : "This order is not assigned to your account.", n > 0);

                LoadOrders();
            }
            catch (Exception ex)
            {
                ShowMessage("Order Error: " + ex.Message, false);
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
