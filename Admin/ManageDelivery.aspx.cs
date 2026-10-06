<<<<<<< HEAD
﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pizza_Website.Admin
{
    public partial class ManageDelivery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DatabaseHelper.InitializeDatabase();
                LoadDelivery();

                pnlDeliveryForm.Visible = false;
            }
        }
        public void LoadDelivery()
        {
            try
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                string query = "SELECT DeliveryId, FullName, Email, Mobile, Password, VehicleNumber, Address, Status, CreatedDate FROM DeliveryStaff ORDER BY DeliveryId DESC";

                SqlDataAdapter da = new SqlDataAdapter(query, con);

                DataTable dt = new DataTable();
                da.Fill(dt);

                gvDelivery.DataSource = dt;
                gvDelivery.DataBind();

                con.Close();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error loading delivery staff: " + ex.Message;
                lblMessage.CssClass = "alert alert-danger d-block mb-3";
            }
        }

        protected void btnAddDelivery_Click(object sender, EventArgs e)
        {
            pnlDeliveryForm.Visible = true;

            lblFormTitle.Text = "Add Delivery Partner";
            btnSave.Text = "Save Delivery Partner";

            ViewState["EditDeliveryId"] = null;

            txtFullName.Text = "";
            txtEmail.Text = "";
            txtMobile.Text = "";
            txtPassword.Text = "";
            txtVehicleNumber.Text = "";
            txtAddress.Text = "";

            ddlStatus.SelectedValue = "Available";

            lblMessage.Text = "";
            lblMessage.CssClass = "";
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }

            string name = txtFullName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string mobile = txtMobile.Text.Trim();
            string password = txtPassword.Text.Trim();
            string vehicleNumber = txtVehicleNumber.Text.Trim();
            string address = txtAddress.Text.Trim();
            string status = ddlStatus.SelectedValue;

            try
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                // EDIT / UPDATE
                if (ViewState["EditDeliveryId"] != null)
                {
                    int deliveryId = Convert.ToInt32(ViewState["EditDeliveryId"]);

                    string query = "UPDATE DeliveryStaff SET FullName='" + name +
                                   "', Email='" + email +
                                   "', Mobile='" + mobile +
                                   "', Password='" + password +
                                   "', VehicleNumber='" + vehicleNumber +
                                   "', Address='" + address +
                                   "', Status='" + status +
                                   "' WHERE DeliveryId=" + deliveryId;

                    SqlCommand cmd = new SqlCommand(query, con);

                    cmd.ExecuteNonQuery();

                    con.Close();

                    ViewState["EditDeliveryId"] = null;

                    btnSave.Text = "Save Delivery Partner";
                    lblFormTitle.Text = "Add Delivery Partner";

                    pnlDeliveryForm.Visible = false;

                    LoadDelivery();

                    lblMessage.Text = "Delivery partner updated successfully.";
                    lblMessage.CssClass = "alert alert-success d-block mb-3";

                    return;
                }

                // CHECK EMAIL
                string checkQuery = "SELECT COUNT(*) FROM DeliveryStaff WHERE Email = '" + email + "'";

                SqlCommand checkCmd = new SqlCommand(checkQuery, con);

                int count = Convert.ToInt32(checkCmd.ExecuteScalar());

                if (count > 0)
                {
                    lblMessage.Text = "Email already registered for delivery staff.";
                    lblMessage.CssClass = "alert alert-danger d-block mb-3";

                    con.Close();

                    return;
                }

                // INSERT
                string insertQuery = "INSERT INTO DeliveryStaff " +
                    "(FullName, Email, Mobile, Password, VehicleNumber, Address, Status, CreatedDate) " +
                    "VALUES ('" + name + "', '" + email + "', '" + mobile + "', '" +
                    password + "', '" + vehicleNumber + "', '" + address + "', '" +
                    status + "', GETDATE())";

                SqlCommand insertCmd = new SqlCommand(insertQuery, con);

                insertCmd.ExecuteNonQuery();

                con.Close();

                lblMessage.Text = "Delivery partner added successfully.";
                lblMessage.CssClass = "alert alert-success d-block mb-3";

                pnlDeliveryForm.Visible = false;

                LoadDelivery();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Delivery Error: " + ex.Message;
                lblMessage.CssClass = "alert alert-danger d-block mb-3";
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            pnlDeliveryForm.Visible = false;

            ViewState["EditDeliveryId"] = null;

            btnSave.Text = "Save Delivery Partner";
            lblFormTitle.Text = "Add Delivery Partner";

            txtFullName.Text = "";
            txtEmail.Text = "";
            txtMobile.Text = "";
            txtPassword.Text = "";
            txtVehicleNumber.Text = "";
            txtAddress.Text = "";

            ddlStatus.SelectedValue = "Available";

            lblMessage.Text = "";
            lblMessage.CssClass = "";
        }

        protected void gvDelivery_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int deliveryId = Convert.ToInt32(e.CommandArgument);

            // EDIT
            if (e.CommandName == "EditDelivery")
            {
                try
                {
                    SqlConnection con = DatabaseHelper.GetConnection();
                    con.Open();

                    string query = "SELECT FullName, Email, Mobile, Password, VehicleNumber, Address, Status FROM DeliveryStaff WHERE DeliveryId = " + deliveryId;

                    SqlCommand cmd = new SqlCommand(query, con);

                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        txtFullName.Text = dr["FullName"].ToString();
                        txtEmail.Text = dr["Email"].ToString();
                        txtMobile.Text = dr["Mobile"].ToString();
                        txtPassword.Text = dr["Password"].ToString();
                        txtVehicleNumber.Text = dr["VehicleNumber"].ToString();
                        txtAddress.Text = dr["Address"].ToString();

                        string status = dr["Status"].ToString();

                        if (ddlStatus.Items.FindByValue(status) != null)
                        {
                            ddlStatus.SelectedValue = status;
                        }

                        ViewState["EditDeliveryId"] = deliveryId;

                        lblFormTitle.Text = "Edit Delivery Partner";
                        btnSave.Text = "Update Delivery Partner";

                        pnlDeliveryForm.Visible = true;
                    }

                    dr.Close();
                    con.Close();
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error loading delivery partner: " + ex.Message;
                    lblMessage.CssClass = "alert alert-danger d-block mb-3";
                }
            }

            // DELETE
            else if (e.CommandName == "DeleteDelivery")
            {
                try
                {
                    SqlConnection con = DatabaseHelper.GetConnection();
                    con.Open();

                    string query = "DELETE FROM DeliveryStaff WHERE DeliveryId = " + deliveryId;

                    SqlCommand cmd = new SqlCommand(query, con);

                    cmd.ExecuteNonQuery();

                    con.Close();

                    LoadDelivery();

                    lblMessage.Text = "Delivery partner deleted successfully.";
                    lblMessage.CssClass = "alert alert-success d-block mb-3";
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error deleting delivery partner: " + ex.Message;
                    lblMessage.CssClass = "alert alert-danger d-block mb-3";
                }
            }
        }

        public string GetStatusClass(string status)
        {
            if (status == "Available")
            {
                return "badge bg-success";
            }
            else if (status == "Busy")
            {
                return "badge bg-warning text-dark";
            }
            else
            {
                return "badge bg-secondary";
            }
        }
    }
}
=======
using System;
using System.Web.UI;

namespace Pizza_Website.Admin
{
    public partial class ManageDelivery : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminId"] == null)
            {
                Response.Redirect("~/Admin/AdminLogin.aspx");
                return;
            }
        }
    }
}
>>>>>>> f6d00a40191ed24fd0b3230de093c32c2e8f5c09
