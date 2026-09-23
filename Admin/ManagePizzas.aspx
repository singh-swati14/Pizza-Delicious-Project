<%@ Page Title="Manage Pizzas" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManagePizzas.aspx.cs" Inherits="Pizza_Website.Admin.ManagePizzas" %>

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
</asp:Content>
