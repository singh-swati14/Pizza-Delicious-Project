using System;
<<<<<<< HEAD
using System.Data.SqlClient;
=======
>>>>>>> f6d00a40191ed24fd0b3230de093c32c2e8f5c09
using System.Web.UI;

namespace Pizza_Website.Delivery
{
    public partial class DeliveryDashboard : Page
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
                LoadDashboard();
            }
        }

        private void LoadDashboard()
        {
            try
            {
                int deliveryId = Convert.ToInt32(Session["DeliveryId"]);

                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                string assignedQuery = "SELECT COUNT(*) FROM Orders WHERE DeliveryId=" + deliveryId +
                                        " AND OrderStatus NOT IN ('Delivered','Cancelled')";

                SqlCommand assignedCmd = new SqlCommand(assignedQuery, con);
                lblAssigned.Text = Convert.ToInt32(assignedCmd.ExecuteScalar()).ToString();

                string pendingQuery = "SELECT COUNT(*) FROM Orders WHERE DeliveryId=" + deliveryId +
                                       " AND OrderStatus='Out for Delivery'";

                SqlCommand pendingCmd = new SqlCommand(pendingQuery, con);
                lblPending.Text = Convert.ToInt32(pendingCmd.ExecuteScalar()).ToString();

                string completedQuery = "SELECT COUNT(*) FROM Orders WHERE DeliveryId=" + deliveryId +
                                        " AND OrderStatus='Delivered'";

                SqlCommand completedCmd = new SqlCommand(completedQuery, con);
                lblCompleted.Text = Convert.ToInt32(completedCmd.ExecuteScalar()).ToString();

                string todayQuery = "SELECT COUNT(*) FROM Orders WHERE DeliveryId=" + deliveryId +
                                    " AND CAST(CreatedDate AS DATE)=CAST(GETDATE() AS DATE)";

                SqlCommand todayCmd = new SqlCommand(todayQuery, con);
                lblToday.Text = Convert.ToInt32(todayCmd.ExecuteScalar()).ToString();

                string statusQuery = "SELECT Status FROM DeliveryStaff WHERE DeliveryId=" + deliveryId;

                SqlCommand statusCmd = new SqlCommand(statusQuery, con);

                string status = Convert.ToString(statusCmd.ExecuteScalar());

                lblDutyStatus.Text = "<i class='fas fa-circle me-1'></i>Status: " + Server.HtmlEncode(status);

                con.Close();
            }
            catch (Exception ex)
            {
                lblDutyStatus.Text = "Status unavailable";
            }
=======
>>>>>>> f6d00a40191ed24fd0b3230de093c32c2e8f5c09
        }
    }
}
