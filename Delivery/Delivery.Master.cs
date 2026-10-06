using System;
using System.Web.UI;

namespace Pizza_Website.Delivery
{
    public partial class DeliveryMaster : MasterPage
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
                lblRiderName.Text = "Rider: " + Convert.ToString(Session["DeliveryName"]);
            }
        }

        protected void btnDeliveryLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("DeliveryId"); Session.Remove("DeliveryName"); Session.Remove("DeliveryEmail"); Session.Remove("DeliveryMobile"); Session.Remove("DeliveryVehicle");
            Response.Redirect("~/Delivery/DeliveryLogin.aspx");
=======
>>>>>>> f6d00a40191ed24fd0b3230de093c32c2e8f5c09
        }
    }
}
