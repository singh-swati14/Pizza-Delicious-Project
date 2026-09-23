using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pizza_Website
{
    public partial class Registration : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DatabaseHelper.InitializeDatabase();
                LoadUsers();
            }
        }

        public void LoadUsers()
        {
            try
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                string query = "SELECT UserId, FullName, Email, Mobile, Address, Role, Status, CreatedDate FROM Users ORDER BY UserId DESC";

                SqlDataAdapter da = new SqlDataAdapter(query, con);

                DataTable dt = new DataTable();
                da.Fill(dt);

                gvUsers.DataSource = dt;
                gvUsers.DataBind();

                con.Close();
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error loading users: " + ex.Message;
                lblMessage.CssClass = "alert alert-danger d-block mb-3";
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (ViewState["EditUserId"] != null)
            {
                int userId = Convert.ToInt32(ViewState["EditUserId"]);

                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                string query = "UPDATE Users SET FullName='" + txtFullName.Text.Trim() +
                               "', Email='" + txtRegEmail.Text.Trim() +
                               "', Mobile='" + txtMobile.Text.Trim() +
                               "', Address='" + txtAddress.Text.Trim() +
                               "' WHERE UserId=" + userId;

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                con.Close();

                ViewState["EditUserId"] = null;
                btnRegister.Text = "Register";

                LoadUsers();

                lblMessage.Text = "User updated successfully.";
                lblMessage.CssClass = "alert alert-success d-block mb-3";

                return;
            }

            if (!Page.IsValid)
            {
                return;
            }

            string name = txtFullName.Text.Trim();
            string email = txtRegEmail.Text.Trim();
            string mobile = txtMobile.Text.Trim();
            string password = txtRegPassword.Text.Trim();
            string address = txtAddress.Text.Trim();

            try
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                string checkQuery = "SELECT COUNT(*) FROM Users WHERE Email = '" + email + "'";

                SqlCommand checkCmd = new SqlCommand(checkQuery, con);

                int count = Convert.ToInt32(checkCmd.ExecuteScalar());

                if (count > 0)
                {
                    lblMessage.Text = "Email already registered.";
                    lblMessage.CssClass = "alert alert-danger d-block mb-3";

                    con.Close();
                    return;
                }


                string insertQuery = "INSERT INTO Users " +
                    "(FullName, Email, Mobile, Password, Address, Role, Status, CreatedDate) " +
                    "VALUES ('" + name + "', '" + email + "', '" + mobile + "', '" +
                    password + "', '" + address + "', 'User', 'Active', GETDATE())";

                SqlCommand insertCmd = new SqlCommand(insertQuery, con);

                insertCmd.ExecuteNonQuery();

                con.Close();

                lblMessage.Text = "Registration successful.";
                lblMessage.CssClass = "alert alert-success d-block mb-3";

                LoadUsers();

                Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Registration Error: " + ex.Message;
                lblMessage.CssClass = "alert alert-danger d-block mb-3";
            }
        }
        protected void gvUsers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int userId = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "cmd_edt")
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                string query = "SELECT FullName, Email, Mobile, Address FROM Users WHERE UserId = " + userId;

                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    txtFullName.Text = dr["FullName"].ToString();
                    txtRegEmail.Text = dr["Email"].ToString();
                    txtMobile.Text = dr["Mobile"].ToString();
                    txtAddress.Text = dr["Address"].ToString();

                    ViewState["EditUserId"] = userId;
                    btnRegister.Text = "Update";
                }

                dr.Close();
                con.Close();
            }

            else if (e.CommandName == "cmd_dlt")
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                string query = "DELETE FROM Users WHERE UserId = " + userId;

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                con.Close();

                LoadUsers();

                lblMessage.Text = "User deleted successfully.";
                lblMessage.CssClass = "alert alert-success d-block mb-3";
            }
        }
    }
}