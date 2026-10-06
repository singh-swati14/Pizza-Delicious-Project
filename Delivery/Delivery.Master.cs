using System;
using System.Web.UI;

namespace Pizza_Website.Delivery
{
    public partial class DeliveryMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
        }
    }
}
