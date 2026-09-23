<%@ Page Title="My Orders" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyOrders.aspx.cs" Inherits="Pizza_Website.MyOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-5">
        <h2 class="fw-bold mb-4"><i class="fas fa-receipt text-danger me-2"></i>My Pizza Orders</h2>

        <div class="card border-0 shadow-sm rounded-3 overflow-hidden">
            <div class="table-responsive">
                <table class="table align-middle mb-0 custom-table">
                    <thead>
                        <tr>
                            <th class="ps-4">Order ID</th>
                            <th>Date & Time</th>
                            <th>Items Purchased</th>
                            <th>Total Price</th>
                            <th>Order Status</th>
                            <th class="text-end pe-4">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Order 1 -->
                        <tr>
                            <td class="ps-4 fw-bold text-danger">#PIZZA1001</td>
                            <td>14 Sep 2026, 08:30 PM</td>
                            <td>1x Margherita Supreme, 1x Pepperoni Feast, 1x Four Cheese</td>
                            <td class="fw-bold">1,131.48</td>
                            <td><span class="badge bg-warning text-dark px-3 py-2"><i class="fas fa-motorcycle me-1"></i>Out for Delivery</span></td>
                            <td class="text-end pe-4">
                                <button type="button" class="btn btn-pizza-outline btn-sm" data-bs-toggle="modal" data-bs-target="#orderModal1">
                                    <i class="fas fa-eye me-1"></i>View Details
                                </button>
                            </td>
                        </tr>

                        <!-- Order 2 -->
                        <tr>
                            <td class="ps-4 fw-bold text-danger">#PIZZA0984</td>
                            <td>10 Sep 2026, 07:15 PM</td>
                            <td>2x BBQ Chicken Special, 1x Garlic Bread</td>
                            <td class="fw-bold">1,098.00</td>
                            <td><span class="badge bg-success px-3 py-2"><i class="fas fa-check-circle me-1"></i>Delivered</span></td>
                            <td class="text-end pe-4">
                                <button type="button" class="btn btn-pizza-outline btn-sm" data-bs-toggle="modal" data-bs-target="#orderModal1">
                                    <i class="fas fa-eye me-1"></i>View Details
                                </button>
                            </td>
                        </tr>

                        <!-- Order 3 -->
                        <tr>
                            <td class="ps-4 fw-bold text-danger">#PIZZA0942</td>
                            <td>02 Sep 2026, 01:20 PM</td>
                            <td>1x Veggie Delight, 1x Coke 750ml</td>
                            <td class="fw-bold">439.00</td>
                            <td><span class="badge bg-success px-3 py-2"><i class="fas fa-check-circle me-1"></i>Delivered</span></td>
                            <td class="text-end pe-4">
                                <button type="button" class="btn btn-pizza-outline btn-sm" data-bs-toggle="modal" data-bs-target="#orderModal1">
                                    <i class="fas fa-eye me-1"></i>View Details
                                </button>
                            </td>
                        </tr>

                        <!-- Order 4 -->
                        <tr>
                            <td class="ps-4 fw-bold text-danger">#PIZZA0890</td>
                            <td>25 Aug 2026, 09:40 PM</td>
                            <td>1x Ultimate Family Combo</td>
                            <td class="fw-bold">899.00</td>
                            <td><span class="badge bg-secondary px-3 py-2"><i class="fas fa-clock me-1"></i>Preparing</span></td>
                            <td class="text-end pe-4">
                                <button type="button" class="btn btn-pizza-outline btn-sm" data-bs-toggle="modal" data-bs-target="#orderModal1">
                                    <i class="fas fa-eye me-1"></i>View Details
                                </button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Order Detail Modal UI -->
    <div class="modal fade" id="orderModal1" tabindex="-1" aria-labelledby="orderModalLabel1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content border-0 shadow-lg">
                <div class="modal-header bg-danger text-white">
                    <h5 class="modal-title fw-bold" id="orderModalLabel1">Order Summary - #PIZZA1001</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <p class="mb-1"><strong>Status:</strong> <span class="badge bg-warning text-dark">Out for Delivery</span></p>
                    <p class="mb-1"><strong>Delivery Address:</strong> Flat 402, Baker Street, Mumbai</p>
                    <p class="mb-3"><strong>Rider Assigned:</strong> Rahul Sharma (+91 98111 22233)</p>
                    
                    <h6 class="fw-bold border-bottom pb-2">Items</h6>
                    <ul class="list-group list-group-flush mb-3">
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Margherita Supreme (Medium) x1
                            <span>299.00</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Pepperoni Feast (Medium) x1
                            <span>449.00</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Four Cheese Burst (Medium) x1
                            <span>549.00</span>
                        </li>
                    </ul>
                    <div class="d-flex justify-content-between fs-5 fw-bold border-top pt-2">
                        <span>Total Paid:</span>
                        <span class="text-danger">1,131.48</span>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
