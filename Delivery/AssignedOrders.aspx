<%@ Page Title="Assigned Orders" Language="C#" MasterPageFile="~/Delivery/Delivery.Master" AutoEventWireup="true" CodeBehind="AssignedOrders.aspx.cs" Inherits="Pizza_Website.Delivery.AssignedOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="DeliveryMainContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h2 class="fw-bold mb-1"><i class="fas fa-clipboard-list text-danger me-2"></i>Assigned Delivery Orders</h2>
            <p class="text-muted mb-0">Manage customer dispatch locations and update progress status</p>
        </div>
    </div>

    <div class="card border-0 shadow-sm rounded-3 overflow-hidden">
        <div class="table-responsive">
            <table class="table align-middle mb-0 custom-table">
                <thead>
                    <tr>
                        <th class="ps-4">Order ID</th>
                        <th>Customer Name</th>
                        <th>Delivery Address</th>
                        <th>Phone Number</th>
                        <th>Amount</th>
                        <th>Order Status</th>
                        <th class="text-end pe-4">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="ps-4 fw-bold text-danger">#PIZZA1001</td>
                        <td class="fw-bold">John Doe</td>
                        <td>Flat 402, Baker Street, Mumbai</td>
                        <td><a href="tel:+919876543210" class="text-decoration-none"><i class="fas fa-phone-alt me-1"></i>+91 98765 43210</a></td>
                        <td class="fw-bold">₹1,131.48 (Paid)</td>
                        <td><span class="badge bg-warning text-dark">Out for Delivery</span></td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-outline-info me-1"><i class="fas fa-eye"></i> View</button>
                            <button class="btn btn-sm btn-success"><i class="fas fa-check me-1"></i> Mark Delivered</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="ps-4 fw-bold text-danger">#PIZZA1005</td>
                        <td class="fw-bold">Rohan Verma</td>
                        <td>Plot 12, Park Road, Dadar, Mumbai</td>
                        <td><a href="tel:+919899988877" class="text-decoration-none"><i class="fas fa-phone-alt me-1"></i>+91 98999 88877</a></td>
                        <td class="fw-bold">₹549.00 (COD)</td>
                        <td><span class="badge bg-primary">Preparing</span></td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-outline-info me-1"><i class="fas fa-eye"></i> View</button>
                            <button class="btn btn-sm btn-warning"><i class="fas fa-motorcycle me-1"></i> Accept & Pickup</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
