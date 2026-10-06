<%@ Page Title="Manage Pizzas" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManagePizzas.aspx.cs" Inherits="Pizza_Website.Admin.ManagePizzas" %>
<<<<<<< HEAD
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4"><div><h2 class="fw-bold mb-1"><i class="fas fa-pizza-slice text-danger me-2"></i>Manage Pizza Menu</h2><p class="text-muted mb-0">Add, edit and delete pizzas.</p></div><asp:Button ID="btnNewPizza" runat="server" Text="Add New Pizza" CssClass="btn btn-pizza" OnClick="btnNewPizza_Click" CausesValidation="false" /></div>
    <asp:Label ID="lblMessage" runat="server" CssClass="d-block mb-3"></asp:Label>
    <asp:Panel ID="pnlPizza" runat="server" CssClass="card border-0 shadow-sm rounded-3 p-4 mb-4">
        <h5 class="fw-bold mb-3"><asp:Label ID="lblFormTitle" runat="server" Text="Add New Pizza"></asp:Label></h5>
        <div class="row g-3">
            <div class="col-md-6"><label class="form-label fw-bold">Pizza Name</label><asp:TextBox ID="txtPizzaName" runat="server" CssClass="form-control" placeholder="Mexican Fiesta"></asp:TextBox><asp:RequiredFieldValidator ID="rfvPizzaName" runat="server" ControlToValidate="txtPizzaName" ErrorMessage="Pizza name is required." CssClass="text-danger" Display="Dynamic" /></div>
            <div class="col-md-6"><label class="form-label fw-bold">Category</label><asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select"></asp:DropDownList></div>
            <div class="col-md-4"><label class="form-label fw-bold">Medium Price (₹)</label><asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox><asp:RequiredFieldValidator ID="rfvPrice" runat="server" ControlToValidate="txtPrice" ErrorMessage="Price is required." CssClass="text-danger" Display="Dynamic" /></div>
            <div class="col-md-4"><label class="form-label fw-bold">Status</label><asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select"><asp:ListItem Text="Available" Value="Available" /><asp:ListItem Text="Out of Stock" Value="Out of Stock" /></asp:DropDownList></div>
            <div class="col-md-4"><label class="form-label fw-bold">Image</label><asp:DropDownList ID="ddlImage" runat="server" CssClass="form-select"><asp:ListItem Text="pizza1.jpg" Value="pizza1.jpg" /><asp:ListItem Text="pizza2.jpg" Value="pizza2.jpg" /><asp:ListItem Text="pizza3.jpg" Value="pizza3.jpg" /><asp:ListItem Text="pizza4.jpg" Value="pizza4.jpg" /><asp:ListItem Text="pizza5.jpg" Value="pizza5.jpg" /><asp:ListItem Text="pizza6.jpg" Value="pizza6.jpg" /><asp:ListItem Text="pizza7.jpg" Value="pizza7.jpg" /><asp:ListItem Text="pizza8.jpg" Value="pizza8.jpg" /><asp:ListItem Text="pizza9.jpg" Value="pizza9.jpg" /><asp:ListItem Text="pizza10.jpg" Value="pizza10.jpg" /><asp:ListItem Text="pizza11.jpg" Value="pizza11.jpg" /><asp:ListItem Text="pizza12.jpg" Value="pizza12.jpg" /></asp:DropDownList></div>
            <div class="col-12"><label class="form-label fw-bold">Description</label><asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"></asp:TextBox></div>
        </div>
        <div class="mt-3"><asp:Button ID="btnSave" runat="server" Text="Save Pizza" CssClass="btn btn-pizza me-2" OnClick="btnSave_Click" /><asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-outline-secondary" OnClick="btnCancel_Click" CausesValidation="false" /></div>
    </asp:Panel>

    <div class="card border-0 shadow-sm rounded-3 overflow-hidden"><div class="table-responsive"><asp:GridView ID="gvPizzas" runat="server" AutoGenerateColumns="False" CssClass="table align-middle mb-0 custom-table" GridLines="None" EmptyDataText="No pizzas found." OnRowCommand="gvPizzas_RowCommand">
        <Columns>
            <asp:BoundField DataField="PizzaId" HeaderText="ID" />
            <asp:TemplateField HeaderText="Image"><ItemTemplate><img src='<%# ResolveUrl("~/Images/" + Eval("ImageUrl")) %>' style="width:55px;height:55px;object-fit:cover;border-radius:8px;" /></ItemTemplate></asp:TemplateField>
            <asp:BoundField DataField="PizzaName" HeaderText="Pizza Name" />
            <asp:BoundField DataField="CategoryName" HeaderText="Category" />
            <asp:BoundField DataField="Price" HeaderText="Price (₹)" DataFormatString="{0:0.00}" />
            <asp:BoundField DataField="Status" HeaderText="Status" />
            <asp:TemplateField HeaderText="Actions"><ItemTemplate><asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn btn-sm btn-outline-warning me-1" CommandName="EditPizza" CommandArgument='<%# Eval("PizzaId") %>' CausesValidation="false" /><asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-sm btn-outline-danger" CommandName="DeletePizza" CommandArgument='<%# Eval("PizzaId") %>' CausesValidation="false" OnClientClick="return confirm('Delete this pizza?');" /></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView></div></div>
=======

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h2 class="fw-bold mb-1"><i class="fas fa-pizza-slice text-danger me-2"></i>Manage Pizza Menu</h2>
            <p class="text-muted mb-0">Add, edit, or disable pizzas available in the customer ordering menu</p>
        </div>
        <button type="button" class="btn btn-pizza" data-bs-toggle="modal" data-bs-target="#addPizzaModal">
            <i class="fas fa-plus me-1"></i> Add New Pizza
        </button>
    </div>

    <div class="card border-0 shadow-sm rounded-3 overflow-hidden">
        <div class="table-responsive">
            <table class="table align-middle mb-0 custom-table">
                <thead>
                    <tr>
                        <th class="ps-4">Pizza Image</th>
                        <th>Pizza Name</th>
                        <th>Category</th>
                        <th>Price (Medium)</th>
                        <th>Status</th>
                        <th class="text-end pe-4">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="ps-4">
                            <img src="../Images/pizza1.jpg" class="rounded" style="width: 50px; height: 50px; object-fit: cover;" alt="Margherita">
                        </td>
                        <td>
                            <h6 class="fw-bold mb-0">Margherita Supreme</h6>
                            <small class="text-muted">Classic mozzarella cheese & basil</small>
                        </td>
                        <td><span class="badge bg-success">Veg Pizza</span></td>
                        <td class="fw-bold">₹299.00</td>
                        <td><span class="badge bg-success">Available</span></td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-outline-warning me-1" title="Edit"><i class="fas fa-edit"></i> Edit</button>
                            <button class="btn btn-sm btn-outline-danger" title="Delete"><i class="fas fa-trash-alt"></i> Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="ps-4">
                            <img src="../Images/pizza2.jpg" class="rounded" style="width: 50px; height: 50px; object-fit: cover;" alt="Pepperoni">
                        </td>
                        <td>
                            <h6 class="fw-bold mb-0">Pepperoni Feast</h6>
                            <small class="text-muted">Loaded sliced pepperoni</small>
                        </td>
                        <td><span class="badge bg-danger">Special Pizza</span></td>
                        <td class="fw-bold">₹449.00</td>
                        <td><span class="badge bg-success">Available</span></td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-outline-warning me-1" title="Edit"><i class="fas fa-edit"></i> Edit</button>
                            <button class="btn btn-sm btn-outline-danger" title="Delete"><i class="fas fa-trash-alt"></i> Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="ps-4">
                            <img src="../Images/pizza3.jpg" class="rounded" style="width: 50px; height: 50px; object-fit: cover;" alt="BBQ Chicken">
                        </td>
                        <td>
                            <h6 class="fw-bold mb-0">BBQ Chicken Special</h6>
                            <small class="text-muted">Grilled chicken in BBQ glaze</small>
                        </td>
                        <td><span class="badge bg-warning text-dark">Spicy Pizza</span></td>
                        <td class="fw-bold">₹499.00</td>
                        <td><span class="badge bg-success">Available</span></td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-outline-warning me-1" title="Edit"><i class="fas fa-edit"></i> Edit</button>
                            <button class="btn btn-sm btn-outline-danger" title="Delete"><i class="fas fa-trash-alt"></i> Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="ps-4">
                            <img src="../Images/pizza5.jpg" class="rounded" style="width: 50px; height: 50px; object-fit: cover;" alt="Four Cheese">
                        </td>
                        <td>
                            <h6 class="fw-bold mb-0">Four Cheese Burst</h6>
                            <small class="text-muted">Liquid cheese stuffed crust</small>
                        </td>
                        <td><span class="badge bg-primary">Cheese Pizza</span></td>
                        <td class="fw-bold">₹549.00</td>
                        <td><span class="badge bg-success">Available</span></td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-outline-warning me-1" title="Edit"><i class="fas fa-edit"></i> Edit</button>
                            <button class="btn btn-sm btn-outline-danger" title="Delete"><i class="fas fa-trash-alt"></i> Delete</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Modal: Add Pizza Form -->
    <div class="modal fade" id="addPizzaModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-header bg-danger text-white">
                    <h5 class="modal-title fw-bold">🍕 Add New Pizza Item</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <div class="row g-3">
                        <div class="col-md-6">
                            <label class="form-label font-weight-bold">Pizza Name</label>
                            <input type="text" class="form-control" placeholder="e.g. Mexican Fiesta">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label font-weight-bold">Category</label>
                            <select class="form-select">
                                <option>Veg Pizza</option>
                                <option>Cheese Pizza</option>
                                <option>Spicy Pizza</option>
                                <option>Special Pizza</option>
                                <option>Combo</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label font-weight-bold">Price (Medium ₹)</label>
                            <input type="number" class="form-control" placeholder="399">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label font-weight-bold">Availability Status</label>
                            <select class="form-select">
                                <option>Available</option>
                                <option>Out of Stock</option>
                            </select>
                        </div>
                        <div class="col-12">
                            <label class="form-label font-weight-bold">Upload Pizza Image</label>
                            <input type="file" class="form-control">
                        </div>
                        <div class="col-12">
                            <label class="form-label font-weight-bold">Description</label>
                            <textarea class="form-control" rows="3" placeholder="Enter ingredients & topping descriptions..."></textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-pizza" data-bs-dismiss="modal">Save Pizza Item</button>
                </div>
            </div>
        </div>
    </div>
>>>>>>> f6d00a40191ed24fd0b3230de093c32c2e8f5c09
</asp:Content>
