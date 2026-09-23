<%@ Page Title="Order Placed" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderSuccess.aspx.cs" Inherits="Pizza_Website.OrderSuccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-5 text-center">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="card border-0 shadow-lg rounded-4 p-4 p-md-5">
                    <div class="mb-4">
                        <div class="d-inline-flex align-items-center justify-content-center bg-success text-white rounded-circle shadow" style="width: 90px; height: 90px; font-size: 3rem;">
                            <i class="fas fa-check"></i>
                        </div>
                    </div>

                    <h2 class="fw-bold text-success mb-2">Order Placed Successfully!</h2>
                    <p class="text-muted mb-4">Thank you for your order. Our chefs are preparing your delicious pizza right now!</p>

                    <div class="bg-light p-4 rounded-3 text-start mb-4 border">
                        <div class="d-flex justify-content-between mb-2">
                            <span class="text-muted">Order Reference:</span>
                            <span class="fw-bold text-danger fs-5">#PIZZA1001</span>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <span class="text-muted">Estimated Delivery:</span>
                            <span class="fw-bold text-dark"><i class="fas fa-clock text-warning me-1"></i>30 - 40 Minutes</span>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <span class="text-muted">Payment Mode:</span>
                            <span class="badge bg-primary">Credit Card (Paid)</span>
                        </div>
                        <div class="d-flex justify-content-between">
                            <span class="text-muted">Delivery Address:</span>
                            <span class="fw-bold text-end">Flat 402, Baker Street, Mumbai</span>
                        </div>
                    </div>

                    <div class="d-flex flex-wrap justify-content-center gap-3">
                        <a href="MyOrders.aspx" class="btn btn-pizza px-4 py-2">
                            <i class="fas fa-map-marker-alt me-2"></i>Track Order
                        </a>
                        <a href="Menu.aspx" class="btn btn-pizza-outline px-4 py-2">
                            <i class="fas fa-pizza-slice me-2"></i>Continue Shopping
                        </a>
                        <a href="MyOrders.aspx" class="btn btn-dark px-4 py-2">
                            <i class="fas fa-list me-2"></i>My Orders
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
