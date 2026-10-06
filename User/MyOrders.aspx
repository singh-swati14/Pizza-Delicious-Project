<%@ Page Title="User Orders" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="MyOrders.aspx.cs" Inherits="Pizza_Website.User.MyOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="UserMainContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h2 class="fw-bold mb-1"><i class="fas fa-receipt text-danger me-2"></i>My Order History</h2>
            <p class="text-muted mb-0">Track live orders and view previous order details</p>
        </div>
        <a href="../Menu.aspx" class="btn btn-pizza"><i class="fas fa-pizza-slice me-1"></i> New Order</a>
    </div>

    <div class="card border-0 shadow-sm rounded-3 overflow-hidden">
        <div class="table-responsive">
            <table class="table align-middle mb-0 custom-table">
                <thead>
                    <tr>
                        <th class="ps-4">Order ID</th>
                        <th>Date</th>
                        <th>Items</th>
                        <th>Total Amount</th>
                        <th>Status</th>
                        <th class="text-end pe-4">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="ps-4 fw-bold text-danger">#PIZZA1001</td>
                        <td>14 Sep 2026, 08:30 PM</td>
                        <td>1x Margherita Supreme, 1x Pepperoni Feast, 1x Four Cheese</td>
                        <td class="fw-bold">1,131.48</td>
                        <td><span class="badge bg-warning text-dark px-3 py-2"><i class="fas fa-motorcycle me-1"></i>Out for Delivery</span></td>
                        <td class="text-end pe-4">
                            <button type="button" class="btn btn-pizza-outline btn-sm">View Details</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="ps-4 fw-bold text-danger">#PIZZA0984</td>
                        <td>10 Sep 2026, 07:15 PM</td>
                        <td>2x BBQ Chicken Special, 1x Garlic Bread</td>
                        <td class="fw-bold">1,098.00</td>
                        <td><span class="badge bg-success px-3 py-2"><i class="fas fa-check-circle me-1"></i>Delivered</span></td>
                        <td class="text-end pe-4">
                            <button type="button" class="btn btn-pizza-outline btn-sm">View Details</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="ps-4 fw-bold text-danger">#PIZZA0942</td>
                        <td>02 Sep 2026, 01:20 PM</td>
                        <td>1x Veggie Delight, 1x Coke 750ml</td>
                        <td class="fw-bold">439.00</td>
                        <td><span class="badge bg-success px-3 py-2"><i class="fas fa-check-circle me-1"></i>Delivered</span></td>
                        <td class="text-end pe-4">
                            <button type="button" class="btn btn-pizza-outline btn-sm">View Details</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
