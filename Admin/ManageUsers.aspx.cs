using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pizza_Website.Admin
{
    public partial class ManageUsers : Page
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
                ShowMessage("Error loading users: " + ex.Message, false);
            }
        }

        protected void btnNewUser_Click(object sender, EventArgs e)
        {
            ClearForm();
            pnlUser.Visible = true;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }

            int editId = ViewState["EditUserId"] == null ? 0 : Convert.ToInt32(ViewState["EditUserId"]);

            if (editId == 0 && string.IsNullOrWhiteSpace(txtPassword.Text))
            {
                ShowMessage("Password is required for a new user.", false);
                return;
            }

            string name = txtFullName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string mobile = txtMobile.Text.Trim();
            string address = txtAddress.Text.Trim();
            string role = ddlRole.SelectedValue;
            string status = ddlStatus.SelectedValue;

            try
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                string checkQuery = "SELECT COUNT(*) FROM Users WHERE Email = '" + email +
                                     "' AND UserId <> " + editId;

                SqlCommand checkCmd = new SqlCommand(checkQuery, con);

                int count = Convert.ToInt32(checkCmd.ExecuteScalar());

                if (count > 0)
                {
                    ShowMessage("Email is already registered.", false);
                    con.Close();
                    return;
                }

                if (editId > 0)
                {
                    string query = "UPDATE Users SET FullName='" + name +
                                   "', Email='" + email +
                                   "', Mobile='" + mobile +
                                   "', Address='" + address +
                                   "', Role='" + role +
                                   "', Status='" + status + "'";

                    if (!string.IsNullOrWhiteSpace(txtPassword.Text))
                    {
                        query += ", Password='" + txtPassword.Text.Trim() + "'";
                    }

                    query += " WHERE UserId=" + editId;

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();

                    ShowMessage("User updated successfully.", true);
                }
                else
                {
                    string insertQuery = "INSERT INTO Users " +
                        "(FullName, Email, Mobile, Password, Address, Role, Status, CreatedDate) " +
                        "VALUES ('" + name + "', '" + email + "', '" + mobile + "', '" +
                        txtPassword.Text.Trim() + "', '" + address + "', '" + role + "', '" +
                        status + "', GETDATE())";

                    SqlCommand insertCmd = new SqlCommand(insertQuery, con);
                    insertCmd.ExecuteNonQuery();

                    ShowMessage("User added successfully.", true);
                }

                con.Close();

                ClearForm();
                LoadUsers();
            }
            catch (Exception ex)
            {
                ShowMessage("User Error: " + ex.Message, false);
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearForm();
        }

        private void ClearForm()
        {
            ViewState["EditUserId"] = null;

            txtFullName.Text = "";
            txtEmail.Text = "";
            txtMobile.Text = "";
            txtPassword.Text = "";
            txtAddress.Text = "";

            ddlRole.SelectedValue = "User";
            ddlStatus.SelectedValue = "Active";

            lblFormTitle.Text = "Add New User";
            btnSave.Text = "Save User";
            pnlUser.Visible = false;
        }

        protected void gvUsers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            try
            {
                if (e.CommandName == "EditUser" || e.CommandName == "ViewUser")
                {
                    SqlConnection con = DatabaseHelper.GetConnection();
                    con.Open();

                    string query = "SELECT FullName, Email, Mobile, Address, Role, Status FROM Users WHERE UserId = " + id;

                    SqlCommand cmd = new SqlCommand(query, con);
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        txtFullName.Text = dr["FullName"].ToString();
                        txtEmail.Text = dr["Email"].ToString();
                        txtMobile.Text = dr["Mobile"].ToString();
                        txtAddress.Text = dr["Address"].ToString();
                        ddlRole.SelectedValue = dr["Role"].ToString();
                        ddlStatus.SelectedValue = dr["Status"].ToString();

                        pnlUser.Visible = true;

                        if (e.CommandName == "EditUser")
                        {
                            ViewState["EditUserId"] = id;
                            lblFormTitle.Text = "Edit User";
                            btnSave.Text = "Update User";
                        }
                        else
                        {
                            lblFormTitle.Text = "View User";
                            btnSave.Text = "Update User";
                            ViewState["EditUserId"] = id;
                        }
                    }

                    dr.Close();
                    con.Close();
                }
                else if (e.CommandName == "DeleteUser")
                {
                    SqlConnection con = DatabaseHelper.GetConnection();
                    con.Open();

                    string checkQuery = "SELECT COUNT(*) FROM Orders WHERE UserId = " + id;

                    SqlCommand checkCmd = new SqlCommand(checkQuery, con);

                    int count = Convert.ToInt32(checkCmd.ExecuteScalar());

                    if (count > 0)
                    {
                        ShowMessage("This user has orders, so delete the account after handling those orders.", false);
                        con.Close();
                        return;
                    }

                    string query = "DELETE FROM Users WHERE UserId = " + id;

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();

                    con.Close();

                    ShowMessage("User deleted successfully.", true);
                    LoadUsers();
                }
            }
            catch (Exception ex)
            {
                ShowMessage("User Error: " + ex.Message, false);
            }
        }

        private void ShowMessage(string message, bool success)
        {
            lblMessage.Text = message;
            lblMessage.CssClass = success ? "alert alert-success d-block mb-3" : "alert alert-danger d-block mb-3";
        }
    }
}
