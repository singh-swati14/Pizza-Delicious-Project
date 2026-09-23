<%@ Page Title="Manage Users" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="Pizza_Website.Admin.ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h2 class="fw-bold mb-1"><i class="fas fa-users text-danger me-2"></i>Manage System Users</h2>
            <p class="text-muted mb-0">View registered customers, admin staff, and delivery team members</p>
        </div>
        <button type="button" class="btn btn-pizza" data-bs-toggle="modal" data-bs-target="#addUserModal">
            <i class="fas fa-user-plus me-1"></i> Add New User
        </button>
    </div>

    <div class="card border-0 shadow-sm rounded-3 overflow-hidden">
        <div class="table-responsive">
            <table class="table align-middle mb-0 custom-table">
                <thead>
                    <tr>
                        <th class="ps-4">User ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Mobile</th>
                        <th>Role</th>
                        <th>Status</th>
                        <th class="text-end pe-4">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="ps-4 fw-bold">#USR-101</td>
                        <td>
                            <div class="d-flex align-items-center">
                                <img src="../Images/avatar.jpg" class="rounded-circle me-2" style="width: 35px; height: 35px; object-fit: cover;" alt="John Doe">
                                <span class="fw-bold">John Doe</span>
                            </div>
                        </td>
                        <td>john.doe@example.com</td>
                        <td>+91 98765 43210</td>
                        <td><span class="badge bg-primary">Customer</span></td>
                        <td><span class="badge bg-success">Active</span></td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-outline-info me-1" title="View"><i class="fas fa-eye"></i></button>
                            <button class="btn btn-sm btn-outline-warning me-1" title="Edit"><i class="fas fa-edit"></i></button>
                            <button class="btn btn-sm btn-outline-danger" title="Delete"><i class="fas fa-trash-alt"></i></button>
                        </td>
                    </tr>
                    <tr>
                        <td class="ps-4 fw-bold">#USR-102</td>
                        <td>
                            <div class="d-flex align-items-center">
                                <img src="../Images/avatar.jpg" class="rounded-circle me-2" style="width: 35px; height: 35px; object-fit: cover;" alt="Anita Roy">
                                <span class="fw-bold">Anita Roy</span>
                            </div>
                        </td>
                        <td>anita.roy@example.com</td>
                        <td>+91 98222 33344</td>
                        <td><span class="badge bg-primary">Customer</span></td>
                        <td><span class="badge bg-success">Active</span></td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-outline-info me-1" title="View"><i class="fas fa-eye"></i></button>
                            <button class="btn btn-sm btn-outline-warning me-1" title="Edit"><i class="fas fa-edit"></i></button>
                            <button class="btn btn-sm btn-outline-danger" title="Delete"><i class="fas fa-trash-alt"></i></button>
                        </td>
                    </tr>
                    <tr>
                        <td class="ps-4 fw-bold">#USR-103</td>
                        <td>
                            <div class="d-flex align-items-center">
                                <img src="../Images/delivery.jpg" class="rounded-circle me-2" style="width: 35px; height: 35px; object-fit: cover;" alt="Rahul Sharma">
                                <span class="fw-bold">Rahul Sharma</span>
                            </div>
                        </td>
                        <td>rahul.delivery@pizzapalace.com</td>
                        <td>+91 98111 22233</td>
                        <td><span class="badge bg-success">Delivery Staff</span></td>
                        <td><span class="badge bg-success">Active</span></td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-outline-info me-1" title="View"><i class="fas fa-eye"></i></button>
                            <button class="btn btn-sm btn-outline-warning me-1" title="Edit"><i class="fas fa-edit"></i></button>
                            <button class="btn btn-sm btn-outline-danger" title="Delete"><i class="fas fa-trash-alt"></i></button>
                        </td>
                    </tr>
                    <tr>
                        <td class="ps-4 fw-bold">#USR-104</td>
                        <td>
                            <div class="d-flex align-items-center">
                                <img src="../Images/avatar.jpg" class="rounded-circle me-2" style="width: 35px; height: 35px; object-fit: cover;" alt="Admin User">
                                <span class="fw-bold">System Admin</span>
                            </div>
                        </td>
                        <td>admin@pizzapalace.com</td>
                        <td>+91 99000 11122</td>
                        <td><span class="badge bg-danger">Administrator</span></td>
                        <td><span class="badge bg-success">Active</span></td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-outline-info me-1" title="View"><i class="fas fa-eye"></i></button>
                            <button class="btn btn-sm btn-outline-warning me-1" title="Edit"><i class="fas fa-edit"></i></button>
                            <button class="btn btn-sm btn-outline-danger" title="Delete"><i class="fas fa-trash-alt"></i></button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Modal: Add User Form -->
    <div class="modal fade" id="addUserModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header bg-dark text-white">
                    <h5 class="modal-title fw-bold">Add New User</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <div class="mb-3">
                        <label class="form-label font-weight-bold">Full Name</label>
                        <input type="text" class="form-control" placeholder="Name">
                    </div>
                    <div class="mb-3">
                        <label class="form-label font-weight-bold">Email</label>
                        <input type="email" class="form-control" placeholder="Email">
                    </div>
                    <div class="mb-3">
                        <label class="form-label font-weight-bold">Mobile</label>
                        <input type="text" class="form-control" placeholder="Phone">
                    </div>
                    <div class="mb-3">
                        <label class="form-label font-weight-bold">Role</label>
                        <select class="form-select">
                            <option>Customer</option>
                            <option>Delivery Staff</option>
                            <option>Administrator</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-pizza" data-bs-dismiss="modal">Save User</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
