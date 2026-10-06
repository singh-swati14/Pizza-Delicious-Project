<%@ Page Title="Manage Categories" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageCategories.aspx.cs" Inherits="Pizza_Website.Admin.ManageCategories" %>
<<<<<<< HEAD
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div><h2 class="fw-bold mb-1"><i class="fas fa-list text-danger me-2"></i>Manage Pizza Categories</h2><p class="text-muted mb-0">Add, edit and delete categories.</p></div>
        <asp:Button ID="btnNewCategory" runat="server" Text="Add Category" CssClass="btn btn-pizza" OnClick="btnNewCategory_Click" CausesValidation="false" />
    </div>

    <asp:Label ID="lblMessage" runat="server" CssClass="d-block mb-3"></asp:Label>

    <asp:Panel ID="pnlCategory" runat="server" CssClass="card border-0 shadow-sm rounded-3 p-4 mb-4">
        <h5 class="fw-bold mb-3"><asp:Label ID="lblFormTitle" runat="server" Text="Add Category"></asp:Label></h5>
        <div class="row g-3">
            <div class="col-md-6"><label class="form-label fw-bold">Category Name</label><asp:TextBox ID="txtCategoryName" runat="server" CssClass="form-control" placeholder="Veg Pizza"></asp:TextBox><asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtCategoryName" ErrorMessage="Category name is required." CssClass="text-danger" Display="Dynamic" /></div>
            <div class="col-md-6"><label class="form-label fw-bold">Status</label><asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select"><asp:ListItem Text="Active" Value="Active" /><asp:ListItem Text="Inactive" Value="Inactive" /></asp:DropDownList></div>
            <div class="col-12"><label class="form-label fw-bold">Description</label><asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"></asp:TextBox></div>
        </div>
        <div class="mt-3"><asp:Button ID="btnSave" runat="server" Text="Save Category" CssClass="btn btn-pizza me-2" OnClick="btnSave_Click" /><asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-outline-secondary" OnClick="btnCancel_Click" CausesValidation="false" /></div>
    </asp:Panel>

    <div class="card border-0 shadow-sm rounded-3 overflow-hidden">
        <div class="table-responsive">
            <asp:GridView ID="gvCategories" runat="server" AutoGenerateColumns="False" CssClass="table align-middle mb-0 custom-table" GridLines="None" EmptyDataText="No categories found." OnRowCommand="gvCategories_RowCommand">
                <Columns>
                    <asp:BoundField DataField="CategoryId" HeaderText="Category ID" />
                    <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
                    <asp:BoundField DataField="Description" HeaderText="Description" />
                    <asp:BoundField DataField="Status" HeaderText="Status" />
                    <asp:TemplateField HeaderText="Actions"><ItemTemplate>
                        <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn btn-sm btn-outline-warning me-1" CommandName="EditCategory" CommandArgument='<%# Eval("CategoryId") %>' CausesValidation="false" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-sm btn-outline-danger" CommandName="DeleteCategory" CommandArgument='<%# Eval("CategoryId") %>' CausesValidation="false" OnClientClick="return confirm('Delete this category?');" />
                    </ItemTemplate></asp:TemplateField>
                </Columns>
            </asp:GridView>
=======

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h2 class="fw-bold mb-1"><i class="fas fa-list text-danger me-2"></i>Manage Pizza Categories</h2>
            <p class="text-muted mb-0">Organize menu items into distinct customer categories</p>
        </div>
        <button type="button" class="btn btn-pizza" data-bs-toggle="modal" data-bs-target="#addCategoryModal">
            <i class="fas fa-plus me-1"></i> Add Category
        </button>
    </div>

    <div class="card border-0 shadow-sm rounded-3 overflow-hidden">
        <div class="table-responsive">
            <table class="table align-middle mb-0 custom-table">
                <thead>
                    <tr>
                        <th class="ps-4">Category ID</th>
                        <th>Category Name</th>
                        <th>Description</th>
                        <th>Status</th>
                        <th class="text-end pe-4">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="ps-4 fw-bold">#CAT-01</td>
                        <td class="fw-bold text-success">Veg Pizza</td>
                        <td>Delicious 100% vegetarian pizzas topped with fresh garden veggies.</td>
                        <td><span class="badge bg-success">Active</span></td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-outline-warning me-1"><i class="fas fa-edit"></i> Edit</button>
                            <button class="btn btn-sm btn-outline-danger"><i class="fas fa-trash-alt"></i> Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="ps-4 fw-bold">#CAT-02</td>
                        <td class="fw-bold text-danger">Non-Veg Pizza</td>
                        <td>Piping hot pizzas topped with grilled chicken, pepperoni, and sausage.</td>
                        <td><span class="badge bg-success">Active</span></td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-outline-warning me-1"><i class="fas fa-edit"></i> Edit</button>
                            <button class="btn btn-sm btn-outline-danger"><i class="fas fa-trash-alt"></i> Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="ps-4 fw-bold">#CAT-03</td>
                        <td class="fw-bold text-warning">Cheese Pizza</td>
                        <td>Extra cheesy delight with mozzarella, liquid cheese, and stuffed crust.</td>
                        <td><span class="badge bg-success">Active</span></td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-outline-warning me-1"><i class="fas fa-edit"></i> Edit</button>
                            <button class="btn btn-sm btn-outline-danger"><i class="fas fa-trash-alt"></i> Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="ps-4 fw-bold">#CAT-04</td>
                        <td class="fw-bold text-primary">Combo Meals</td>
                        <td>Value meal deals combining pizzas, sides, and chilled beverages.</td>
                        <td><span class="badge bg-success">Active</span></td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-outline-warning me-1"><i class="fas fa-edit"></i> Edit</button>
                            <button class="btn btn-sm btn-outline-danger"><i class="fas fa-trash-alt"></i> Delete</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Modal: Add Category Form -->
    <div class="modal fade" id="addCategoryModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header bg-dark text-white">
                    <h5 class="modal-title fw-bold">Add Category</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <div class="mb-3">
                        <label class="form-label font-weight-bold">Category Name</label>
                        <input type="text" class="form-control" placeholder="Category Title">
                    </div>
                    <div class="mb-3">
                        <label class="form-label font-weight-bold">Description</label>
                        <textarea class="form-control" rows="3" placeholder="Category brief description"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-pizza" data-bs-dismiss="modal">Save Category</button>
                </div>
            </div>
>>>>>>> f6d00a40191ed24fd0b3230de093c32c2e8f5c09
        </div>
    </div>
</asp:Content>
