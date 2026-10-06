using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pizza_Website.Admin
{
    public partial class ManageOrders : Page
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
                DatabaseHelper.InitializeDatabase();
                LoadOrders();
            }
        }

        public void LoadOrders()
        {
            try
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                string query = "SELECT OrderId, CustomerName, Phone, DeliveryAddress, Amount, PaymentMethod, OrderStatus, DeliveryId, CreatedDate FROM Orders ORDER BY OrderId DESC";

                SqlDataAdapter da = new SqlDataAdapter(query, con);

                DataTable dt = new DataTable();
                da.Fill(dt);

                gvOrders.DataSource = dt;
                gvOrders.DataBind();

                con.Close();
            }
            catch (Exception ex)
            {
                ShowMessage("Error loading orders: " + ex.Message, false);
            }
        }

        protected void gvOrders_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType != DataControlRowType.DataRow)
            {
                return;
            }

            DataRowView row = (DataRowView)e.Row.DataItem;

            DropDownList ddlStatus = (DropDownList)e.Row.FindControl("ddlOrderStatus");
            DropDownList ddlDelivery = (DropDownList)e.Row.FindControl("ddlDelivery");

            if (ddlStatus != null && ddlStatus.Items.FindByValue(row["OrderStatus"].ToString()) != null)
            {
                ddlStatus.SelectedValue = row["OrderStatus"].ToString();
            }

            if (ddlDelivery != null)
            {
                ddlDelivery.Items.Clear();
                ddlDelivery.Items.Add(new ListItem("Unassigned", ""));

                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                string query = "SELECT DeliveryId, FullName FROM DeliveryStaff WHERE Status<>'Offline' ORDER BY FullName";

                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    ddlDelivery.Items.Add(new ListItem(dr["FullName"].ToString(), dr["DeliveryId"].ToString()));
                }

                dr.Close();
                con.Close();

                string current = row["DeliveryId"] == DBNull.Value ? "" : row["DeliveryId"].ToString();

                if (ddlDelivery.Items.FindByValue(current) != null)
                {
                    ddlDelivery.SelectedValue = current;
                }
            }
        }

        protected void gvOrders_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int orderId = Convert.ToInt32(e.CommandArgument);

            try
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                if (e.CommandName == "UpdateOrder")
                {
                    GridViewRow row = (GridViewRow)((Control)e.CommandSource).NamingContainer;

                    DropDownList ddlStatus = (DropDownList)row.FindControl("ddlOrderStatus");
                    DropDownList ddlDelivery = (DropDownList)row.FindControl("ddlDelivery");

                    string deliveryId = ddlDelivery.SelectedValue;

                    string query = "UPDATE Orders SET OrderStatus='" + ddlStatus.SelectedValue +
                                   "', DeliveryId=" + (string.IsNullOrEmpty(deliveryId) ? "NULL" : deliveryId) +
                                   " WHERE OrderId=" + orderId;

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();

                    ShowMessage("Order updated successfully.", true);
                }
                else if (e.CommandName == "DeleteOrder")
                {
                    string query = "DELETE FROM Orders WHERE OrderId = " + orderId;

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();

                    ShowMessage("Order deleted successfully.", true);
                }

                con.Close();

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
        }
    }
}
