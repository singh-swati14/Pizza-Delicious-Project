using System;
<<<<<<< HEAD
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
=======
using System.Web.UI;
>>>>>>> f6d00a40191ed24fd0b3230de093c32c2e8f5c09

namespace Pizza_Website.Admin
{
    public partial class ManagePizzas : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminId"] == null)
            {
                Response.Redirect("~/Admin/AdminLogin.aspx");
                return;
            }
<<<<<<< HEAD

            if (!IsPostBack)
            {
                DatabaseHelper.InitializeDatabase();
                LoadCategories();
                LoadPizzas();
            }
        }

        private void LoadCategories()
        {
            SqlConnection con = DatabaseHelper.GetConnection();
            con.Open();

            string query = "SELECT CategoryId, CategoryName FROM Categories WHERE Status='Active' ORDER BY CategoryName";

            SqlDataAdapter da = new SqlDataAdapter(query, con);

            DataTable dt = new DataTable();
            da.Fill(dt);

            ddlCategory.DataSource = dt;
            ddlCategory.DataTextField = "CategoryName";
            ddlCategory.DataValueField = "CategoryId";
            ddlCategory.DataBind();

            con.Close();
        }

        public void LoadPizzas()
        {
            try
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                string query = "SELECT p.PizzaId, p.PizzaName, p.CategoryId, c.CategoryName, p.Price, p.Status, p.ImageUrl, p.Description " +
                               "FROM Pizzas p INNER JOIN Categories c ON p.CategoryId=c.CategoryId " +
                               "ORDER BY p.PizzaId DESC";

                SqlDataAdapter da = new SqlDataAdapter(query, con);

                DataTable dt = new DataTable();
                da.Fill(dt);

                gvPizzas.DataSource = dt;
                gvPizzas.DataBind();

                con.Close();
            }
            catch (Exception ex)
            {
                ShowMessage("Error loading pizzas: " + ex.Message, false);
            }
        }

        protected void btnNewPizza_Click(object sender, EventArgs e)
        {
            ClearForm();
            pnlPizza.Visible = true;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }

            decimal price;

            if (!Decimal.TryParse(txtPrice.Text.Trim(), out price) || price < 0)
            {
                ShowMessage("Enter a valid price.", false);
                return;
            }

            string name = txtPizzaName.Text.Trim();
            string categoryId = ddlCategory.SelectedValue;
            string status = ddlStatus.SelectedValue;
            string imageUrl = ddlImage.SelectedValue;
            string description = txtDescription.Text.Trim();

            try
            {
                SqlConnection con = DatabaseHelper.GetConnection();
                con.Open();

                if (ViewState["EditPizzaId"] != null)
                {
                    int pizzaId = Convert.ToInt32(ViewState["EditPizzaId"]);

                    string query = "UPDATE Pizzas SET PizzaName='" + name +
                                   "', CategoryId=" + categoryId +
                                   ", Price=" + price +
                                   ", Status='" + status +
                                   "', ImageUrl='" + imageUrl +
                                   "', Description='" + description +
                                   "' WHERE PizzaId=" + pizzaId;

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();

                    ShowMessage("Pizza updated successfully.", true);
                }
                else
                {
                    string insertQuery = "INSERT INTO Pizzas " +
                        "(PizzaName, CategoryId, Price, Status, ImageUrl, Description) " +
                        "VALUES ('" + name + "', " + categoryId + ", " + price + ", '" +
                        status + "', '" + imageUrl + "', '" + description + "')";

                    SqlCommand insertCmd = new SqlCommand(insertQuery, con);
                    insertCmd.ExecuteNonQuery();

                    ShowMessage("Pizza added successfully.", true);
                }

                con.Close();

                ClearForm();
                LoadPizzas();
            }
            catch (Exception ex)
            {
                ShowMessage("Pizza Error: " + ex.Message, false);
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearForm();
        }

        private void ClearForm()
        {
            ViewState["EditPizzaId"] = null;
            txtPizzaName.Text = "";
            txtPrice.Text = "";
            txtDescription.Text = "";
            ddlStatus.SelectedValue = "Available";

            if (ddlCategory.Items.Count > 0)
            {
                ddlCategory.SelectedIndex = 0;
            }

            ddlImage.SelectedIndex = 0;

            lblFormTitle.Text = "Add New Pizza";
            btnSave.Text = "Save Pizza";
            pnlPizza.Visible = false;
        }

        protected void gvPizzas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            try
            {
                if (e.CommandName == "EditPizza")
                {
                    SqlConnection con = DatabaseHelper.GetConnection();
                    con.Open();

                    string query = "SELECT PizzaName, CategoryId, Price, Status, ImageUrl, Description FROM Pizzas WHERE PizzaId = " + id;

                    SqlCommand cmd = new SqlCommand(query, con);
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        txtPizzaName.Text = dr["PizzaName"].ToString();
                        ddlCategory.SelectedValue = dr["CategoryId"].ToString();
                        txtPrice.Text = dr["Price"].ToString();
                        ddlStatus.SelectedValue = dr["Status"].ToString();

                        if (ddlImage.Items.FindByValue(dr["ImageUrl"].ToString()) != null)
                        {
                            ddlImage.SelectedValue = dr["ImageUrl"].ToString();
                        }

                        txtDescription.Text = dr["Description"].ToString();

                        ViewState["EditPizzaId"] = id;
                        lblFormTitle.Text = "Edit Pizza";
                        btnSave.Text = "Update Pizza";
                        pnlPizza.Visible = true;
                    }

                    dr.Close();
                    con.Close();
                }
                else if (e.CommandName == "DeletePizza")
                {
                    SqlConnection con = DatabaseHelper.GetConnection();
                    con.Open();

                    string query = "DELETE FROM Pizzas WHERE PizzaId = " + id;

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();

                    con.Close();

                    ShowMessage("Pizza deleted successfully.", true);
                    LoadPizzas();
                }
            }
            catch (Exception ex)
            {
                ShowMessage("Pizza Error: " + ex.Message, false);
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
