<%@ Page Title="Manage Delivery Staff" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageDelivery.aspx.cs" Inherits="Pizza_Website.Admin.ManageDelivery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h2 class="fw-bold mb-1"><i class="fas fa-motorcycle text-danger me-2"></i>Manage Delivery Staff</h2>
            <p class="text-muted mb-0">Rider availability, active order dispatch, and staff performance</p>
        </div>
        <button type="button" class="btn btn-pizza">
            <i class="fas fa-user-plus me-1"></i> Add Delivery Partner
        </button>
    </div>

    <div class="card border-0 shadow-sm rounded-3 overflow-hidden">
        <div class="table-responsive">
            <table class="table align-middle mb-0 custom-table">
                <thead>
                    <tr>
                        <th class="ps-4">Rider ID</th>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Assigned Orders</th>
                        <th>Status</th>
                        <th class="text-end pe-4">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="ps-4 fw-bold">#DLV-01</td>
                        <td>
                            <div class="d-flex align-items-center">
                                <img src="../Images/delivery.jpg" class="rounded-circle me-2" style="width: 35px; height: 35px; object-fit: cover;" alt="Rahul Sharma">
                                <span class="fw-bold">Rahul Sharma</span>
                            </div>
                        </td>
                        <td>+91 98111 22233</td>
                        <td>rahul.sharma@pizzapalace.com</td>
                        <td><span class="badge bg-warning text-dark">2 Active</span></td>
                        <td><span class="badge bg-danger">Busy</span></td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-outline-primary me-1"><i class="fas fa-tasks"></i> Assign Order</button>
                            <button class="btn btn-sm btn-outline-warning me-1"><i class="fas fa-edit"></i> Edit</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="ps-4 fw-bold">#DLV-02</td>
                        <td>
                            <div class="d-flex align-items-center">
                                <img src="../Images/delivery.jpg" class="rounded-circle me-2" style="width: 35px; height: 35px; object-fit: cover;" alt="Amit Kumar">
                                <span class="fw-bold">Amit Kumar</span>
                            </div>
                        </td>
                        <td>+91 98333 44455</td>
                        <td>amit.kumar@pizzapalace.com</td>
                        <td><span class="badge bg-secondary">0 Active</span></td>
                        <td><span class="badge bg-success">Available</span></td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-outline-primary me-1"><i class="fas fa-tasks"></i> Assign Order</button>
                            <button class="btn btn-sm btn-outline-warning me-1"><i class="fas fa-edit"></i> Edit</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="ps-4 fw-bold">#DLV-03</td>
                        <td>
                            <div class="d-flex align-items-center">
                                <img src="../Images/delivery.jpg" class="rounded-circle me-2" style="width: 35px; height: 35px; object-fit: cover;" alt="Vikash Yadav">
                                <span class="fw-bold">Vikash Yadav</span>
                            </div>
                        </td>
                        <td>+91 98555 66677</td>
                        <td>vikash.yadav@pizzapalace.com</td>
                        <td><span class="badge bg-secondary">0 Active</span></td>
                        <td><span class="badge bg-secondary">Offline</span></td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-outline-primary me-1" disabled><i class="fas fa-tasks"></i> Assign Order</button>
                            <button class="btn btn-sm btn-outline-warning me-1"><i class="fas fa-edit"></i> Edit</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
