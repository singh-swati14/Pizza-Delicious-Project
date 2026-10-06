using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pizza_Website.Admin
{
    public partial class ManageCategories : Page
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
                LoadCategories();
            }
        }

        public void LoadCategories()
        {
            try
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                string query = "SELECT CategoryId, CategoryName, Description, Status FROM Categories ORDER BY CategoryId DESC";

                SqlDataAdapter da = new SqlDataAdapter(query, con);

                DataTable dt = new DataTable();
                da.Fill(dt);

                gvCategories.DataSource = dt;
                gvCategories.DataBind();

                con.Close();
            }
            catch (Exception ex)
            {
                ShowMessage("Error loading categories: " + ex.Message, false);
            }
        }

        protected void btnNewCategory_Click(object sender, EventArgs e)
        {
            ClearForm();
            pnlCategory.Visible = true;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }

            string name = txtCategoryName.Text.Trim();
            string description = txtDescription.Text.Trim();
            string status = ddlStatus.SelectedValue;

            try
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                if (ViewState["EditCategoryId"] != null)
                {
                    int categoryId = Convert.ToInt32(ViewState["EditCategoryId"]);

                    string query = "UPDATE Categories SET CategoryName='" + name +
                                   "', Description='" + description +
                                   "', Status='" + status +
                                   "' WHERE CategoryId=" + categoryId;

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();

                    ShowMessage("Category updated successfully.", true);
                }
                else
                {
                    string checkQuery = "SELECT COUNT(*) FROM Categories WHERE CategoryName = '" + name + "'";

                    SqlCommand checkCmd = new SqlCommand(checkQuery, con);

                    int count = Convert.ToInt32(checkCmd.ExecuteScalar());

                    if (count > 0)
                    {
                        ShowMessage("Category already exists.", false);
                        con.Close();
                        return;
                    }

                    string insertQuery = "INSERT INTO Categories " +
                        "(CategoryName, Description, Status) " +
                        "VALUES ('" + name + "', '" + description + "', '" + status + "')";

                    SqlCommand insertCmd = new SqlCommand(insertQuery, con);
                    insertCmd.ExecuteNonQuery();

                    ShowMessage("Category added successfully.", true);
                }

                con.Close();

                ClearForm();
                LoadCategories();
            }
            catch (Exception ex)
            {
                ShowMessage("Category Error: " + ex.Message, false);
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearForm();
        }

        private void ClearForm()
        {
            ViewState["EditCategoryId"] = null;
            txtCategoryName.Text = "";
            txtDescription.Text = "";
            ddlStatus.SelectedValue = "Active";
            lblFormTitle.Text = "Add Category";
            btnSave.Text = "Save Category";
            pnlCategory.Visible = false;
        }

        protected void gvCategories_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            try
            {
                if (e.CommandName == "EditCategory")
                {
                    SqlConnection con = DatabaseHelper.GetConnection();
                    con.Open();

                    string query = "SELECT CategoryName, Description, Status FROM Categories WHERE CategoryId = " + id;

                    SqlCommand cmd = new SqlCommand(query, con);
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        txtCategoryName.Text = dr["CategoryName"].ToString();
                        txtDescription.Text = dr["Description"].ToString();
                        ddlStatus.SelectedValue = dr["Status"].ToString();

                        ViewState["EditCategoryId"] = id;
                        lblFormTitle.Text = "Edit Category";
                        btnSave.Text = "Update Category";
                        pnlCategory.Visible = true;
                    }

                    dr.Close();
                    con.Close();
                }
                else if (e.CommandName == "DeleteCategory")
                {
                    SqlConnection con = DatabaseHelper.GetConnection();
                    con.Open();

                    string checkQuery = "SELECT COUNT(*) FROM Pizzas WHERE CategoryId = " + id;

                    SqlCommand checkCmd = new SqlCommand(checkQuery, con);

                    int count = Convert.ToInt32(checkCmd.ExecuteScalar());

                    if (count > 0)
                    {
                        ShowMessage("Cannot delete this category because pizzas are using it. Delete or move those pizzas first.", false);
                        con.Close();
                        return;
                    }

                    string query = "DELETE FROM Categories WHERE CategoryId = " + id;

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();

                    con.Close();

                    ShowMessage("Category deleted successfully.", true);
                    LoadCategories();
                }
            }
            catch (Exception ex)
            {
                ShowMessage("Category Error: " + ex.Message, false);
            }
        }

        private void ShowMessage(string message, bool success)
        {
            lblMessage.Text = message;
            lblMessage.CssClass = success ? "alert alert-success d-block mb-3" : "alert alert-danger d-block mb-3";
        }
    }
}
