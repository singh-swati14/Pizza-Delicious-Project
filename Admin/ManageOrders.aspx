<%@ Page Title="Manage Orders" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageOrders.aspx.cs" Inherits="Pizza_Website.Admin.ManageOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h2 class="fw-bold mb-1"><i class="fas fa-shopping-bag text-danger me-2"></i>Manage Customer Orders</h2>
            <p class="text-muted mb-0">Track live orders, update cooking status, and assign delivery partners</p>
        </div>
    </div>

    <div class="card border-0 shadow-sm rounded-3 overflow-hidden">
        <div class="table-responsive">
            <table class="table align-middle mb-0 custom-table">
                <thead>
                    <tr>
                        <th class="ps-4">Order ID</th>
                        <th>Customer</th>
                        <th>Date & Time</th>
                        <th>Amount</th>
                        <th>Payment</th>
                        <th>Order Status</th>
                        <th>Delivery Person</th>
                        <th class="text-end pe-4">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="ps-4 fw-bold text-danger">#PIZZA1001</td>
                        <td>John Doe</td>
                        <td>14 Sep 2026, 08:30 PM</td>
                        <td class="fw-bold">₹1,131.48</td>
                        <td><span class="badge bg-success">Paid (Card)</span></td>
                        <td>
                            <select class="form-select form-select-sm border-warning fw-bold">
                                <option>Pending</option>
                                <option>Confirmed</option>
                                <option>Preparing</option>
                                <option selected>Out for Delivery</option>
                                <option>Delivered</option>
                                <option>Cancelled</option>
                            </select>
                        </td>
                        <td>
                            <select class="form-select form-select-sm">
                                <option selected>Rahul Sharma</option>
                                <option>Amit Kumar</option>
                                <option>Vikash Yadav</option>
                            </select>
                        </td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-pizza-outline"><i class="fas fa-save"></i> Update</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="ps-4 fw-bold text-danger">#PIZZA1000</td>
                        <td>Anita Roy</td>
                        <td>14 Sep 2026, 08:12 PM</td>
                        <td class="fw-bold">₹499.00</td>
                        <td><span class="badge bg-warning text-dark">COD</span></td>
                        <td>
                            <select class="form-select form-select-sm border-info fw-bold">
                                <option>Pending</option>
                                <option>Confirmed</option>
                                <option selected>Preparing</option>
                                <option>Out for Delivery</option>
                                <option>Delivered</option>
                                <option>Cancelled</option>
                            </select>
                        </td>
                        <td>
                            <select class="form-select form-select-sm">
                                <option value="">Assign Driver...</option>
                                <option>Rahul Sharma</option>
                                <option selected>Amit Kumar</option>
                                <option>Vikash Yadav</option>
                            </select>
                        </td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-pizza-outline"><i class="fas fa-save"></i> Update</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="ps-4 fw-bold text-danger">#PIZZA0999</td>
                        <td>Vikram Singh</td>
                        <td>14 Sep 2026, 07:55 PM</td>
                        <td class="fw-bold">₹899.00</td>
                        <td><span class="badge bg-success">Paid (UPI)</span></td>
                        <td>
                            <select class="form-select form-select-sm border-success fw-bold">
                                <option>Pending</option>
                                <option>Confirmed</option>
                                <option>Preparing</option>
                                <option>Out for Delivery</option>
                                <option selected>Delivered</option>
                                <option>Cancelled</option>
                            </select>
                        </td>
                        <td>
                            <select class="form-select form-select-sm">
                                <option selected>Vikash Yadav</option>
                            </select>
                        </td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-pizza-outline"><i class="fas fa-save"></i> Update</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
