<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Pizza_Website.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-5">
        <h2 class="fw-bold mb-4"><i class="fas fa-shopping-cart text-danger me-2"></i>Your Shopping Cart</h2>

        <div class="row g-4">
            <!-- Left Side: Cart Items Table -->
            <div class="col-lg-8">
                <div class="card border-0 shadow-sm rounded-3 overflow-hidden">
                    <div class="table-responsive">
                        <table class="table align-middle mb-0">
                            <thead class="table-light">
                                <tr>
                                    <th scope="col" class="ps-4">Pizza Item</th>
                                    <th scope="col">Size</th>
                                    <th scope="col">Price</th>
                                    <th scope="col" class="text-center">Quantity</th>
                                    <th scope="col">Subtotal</th>
                                    <th scope="col" class="text-end pe-4">Remove</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Item 1 -->
                                <tr>
                                    <td class="ps-4">
                                        <div class="d-flex align-items-center">
                                            <img src="Images/pizza1.jpg" class="rounded me-3" style="width: 60px; height: 60px; object-fit: cover;" alt="Margherita Supreme">
                                            <div>
                                                <h6 class="fw-bold mb-0">Margherita Supreme</h6>
                                                <small class="badge bg-success">Veg</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>Medium (10")</td>
                                    <td>299</td>
                                    <td class="text-center">
                                        <div class="input-group input-group-sm justify-content-center" style="width: 110px; margin: 0 auto;">
                                            <button class="btn btn-outline-secondary" type="button">-</button>
                                            <input type="text" class="form-control text-center fw-bold" value="1">
                                            <button class="btn btn-outline-secondary" type="button">+</button>
                                        </div>
                                    </td>
                                    <td class="fw-bold">299</td>
                                    <td class="text-end pe-4">
                                        <button class="btn btn-link text-danger p-0" title="Remove"><i class="fas fa-trash-alt fs-5"></i></button>
                                    </td>
                                </tr>

                                <!-- Item 2 -->
                                <tr>
                                    <td class="ps-4">
                                        <div class="d-flex align-items-center">
                                            <img src="Images/pizza2.jpg" class="rounded me-3" style="width: 60px; height: 60px; object-fit: cover;" alt="Pepperoni Feast">
                                            <div>
                                                <h6 class="fw-bold mb-0">Pepperoni Feast</h6>
                                                <small class="badge bg-danger">Non-Veg</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>Medium (10")</td>
                                    <td>449</td>
                                    <td class="text-center">
                                        <div class="input-group input-group-sm justify-content-center" style="width: 110px; margin: 0 auto;">
                                            <button class="btn btn-outline-secondary" type="button">-</button>
                                            <input type="text" class="form-control text-center fw-bold" value="1">
                                            <button class="btn btn-outline-secondary" type="button">+</button>
                                        </div>
                                    </td>
                                    <td class="fw-bold">449</td>
                                    <td class="text-end pe-4">
                                        <button class="btn btn-link text-danger p-0" title="Remove"><i class="fas fa-trash-alt fs-5"></i></button>
                                    </td>
                                </tr>

                                <!-- Item 3 -->
                                <tr>
                                    <td class="ps-4">
                                        <div class="d-flex align-items-center">
                                            <img src="Images/pizza5.jpg" class="rounded me-3" style="width: 60px; height: 60px; object-fit: cover;" alt="Four Cheese Burst">
                                            <div>
                                                <h6 class="fw-bold mb-0">Four Cheese Burst</h6>
                                                <small class="badge bg-warning text-dark">Special</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>Medium (10")</td>
                                    <td>549</td>
                                    <td class="text-center">
                                        <div class="input-group input-group-sm justify-content-center" style="width: 110px; margin: 0 auto;">
                                            <button class="btn btn-outline-secondary" type="button">-</button>
                                            <input type="text" class="form-control text-center fw-bold" value="1">
                                            <button class="btn btn-outline-secondary" type="button">+</button>
                                        </div>
                                    </td>
                                    <td class="fw-bold">549</td>
                                    <td class="text-end pe-4">
                                        <button class="btn btn-link text-danger p-0" title="Remove"><i class="fas fa-trash-alt fs-5"></i></button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="d-flex justify-content-between align-items-center mt-4">
                    <a href="Menu.aspx" class="btn btn-outline-secondary">
                        <i class="fas fa-arrow-left me-2"></i>Continue Shopping
                    </a>
                    <button type="button" class="btn btn-outline-danger">
                        <i class="fas fa-trash me-2"></i>Clear Cart
                    </button>
                </div>
            </div>

            <!-- Right Side: Order Summary -->
            <div class="col-lg-4">
                <div class="card border-0 shadow-sm rounded-3">
                    <div class="card-header bg-dark text-white py-3">
                        <h5 class="fw-bold mb-0">Order Summary</h5>
                    </div>
                    <div class="card-body p-4">
                        <div class="d-flex justify-content-between mb-2">
                            <span class="text-muted">Items Subtotal</span>
                            <span class="fw-bold">1,297.00</span>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <span class="text-muted">Delivery Charge</span>
                            <span class="text-success fw-bold">40.00</span>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <span class="text-muted">Promo Discount (20%)</span>
                            <span class="text-danger fw-bold">- 259.40</span>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <span class="text-muted">GST & Taxes (5%)</span>
                            <span class="fw-bold">53.88</span>
                        </div>

                        <hr class="my-3">

                        <div class="d-flex justify-content-between mb-4">
                            <span class="fs-5 fw-bold">Grand Total</span>
                            <span class="fs-4 fw-bold text-danger">1,131.48</span>
                        </div>

                        <!-- Coupon Code Input -->
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Promo Code (PIZZA20)" value="PIZZA20">
                            <button class="btn btn-dark" type="button">Applied</button>
                        </div>

                        <div class="d-grid">
                            <a href="Checkout.aspx" class="btn btn-pizza btn-lg py-2 fs-5">
                                Proceed to Checkout <i class="fas fa-arrow-right ms-2"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
