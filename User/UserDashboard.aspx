<%@ Page Title="User Dashboard" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="Pizza_Website.User.UserDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="UserMainContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h2 class="fw-bold mb-1">Welcome, <asp:Literal ID="litDashboardUserName" runat="server">User</asp:Literal>! </h2>
            <p class="text-muted mb-0">Here is your personal pizza order summary and account status</p>
        </div>
        <a href="../Menu.aspx" class="btn btn-pizza btn-lg fs-6"><i class="fas fa-pizza-slice me-2"></i>Order Pizza Now</a>
    </div>

    <!-- 4 User Stat Cards -->
    <div class="row g-3 mb-4">
        <div class="col-md-3">
            <div class="stat-card">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span class="text-muted small fw-bold">MY ORDERS</span>
                    <div class="stat-icon bg-primary text-white"><i class="fas fa-receipt"></i></div>
                </div>
                <h3 class="fw-bold mb-0">12</h3>
                <small class="text-muted">Lifetime orders</small>
            </div>
        </div>

        <div class="col-md-3">
            <div class="stat-card">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span class="text-muted small fw-bold">PENDING ORDERS</span>
                    <div class="stat-icon bg-warning text-dark"><i class="fas fa-clock"></i></div>
                </div>
                <h3 class="fw-bold mb-0 text-warning">1</h3>
                <small class="text-warning">Out for Delivery</small>
            </div>
        </div>

        <div class="col-md-3">
            <div class="stat-card">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span class="text-muted small fw-bold">DELIVERED ORDERS</span>
                    <div class="stat-icon bg-success text-white"><i class="fas fa-check-circle"></i></div>
                </div>
                <h3 class="fw-bold mb-0">11</h3>
                <small class="text-success">Successful orders</small>
            </div>
        </div>

        <div class="col-md-3">
            <div class="stat-card">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span class="text-muted small fw-bold">TOTAL SPENT</span>
                    <div class="stat-icon bg-danger text-white"><i class="fas fa-rupee-sign"></i></div>
                </div>
                <h3 class="fw-bold mb-0 text-danger">₹4,567</h3>
                <small class="text-muted">20% savings with codes</small>
            </div>
        </div>
    </div>

    <!-- Quick Action Buttons Grid -->
    <div class="row g-4 mb-4">
        <div class="col-md-3">
            <a href="../Menu.aspx" class="card border-0 shadow-sm p-4 text-center text-decoration-none h-100 text-dark">
                <div class="text-danger display-5 mb-2"><i class="fas fa-pizza-slice"></i></div>
                <h5 class="fw-bold">Order Pizza</h5>
                <p class="text-muted small mb-0">Browse menu & order hot pizzas</p>
            </a>
        </div>
        <div class="col-md-3">
            <a href="../Menu.aspx" class="card border-0 shadow-sm p-4 text-center text-decoration-none h-100 text-dark">
                <div class="text-warning display-5 mb-2"><i class="fas fa-book-open"></i></div>
                <h5 class="fw-bold">View Menu</h5>
                <p class="text-muted small mb-0">Explore categories & deals</p>
            </a>
        </div>
        <div class="col-md-3">
            <a href="MyOrders.aspx" class="card border-0 shadow-sm p-4 text-center text-decoration-none h-100 text-dark">
                <div class="text-info display-5 mb-2"><i class="fas fa-history"></i></div>
                <h5 class="fw-bold">My Orders</h5>
                <p class="text-muted small mb-0">Track live orders & history</p>
            </a>
        </div>
        <div class="col-md-3">
            <a href="MyProfile.aspx" class="card border-0 shadow-sm p-4 text-center text-decoration-none h-100 text-dark">
                <div class="text-success display-5 mb-2"><i class="fas fa-id-card"></i></div>
                <h5 class="fw-bold">My Profile</h5>
                <p class="text-muted small mb-0">Update address & details</p>
            </a>
        </div>
    </div>
</asp:Content>
