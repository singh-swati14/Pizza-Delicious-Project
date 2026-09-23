<%@ Page Title="Delivery Dashboard" Language="C#" MasterPageFile="~/Delivery/Delivery.Master" AutoEventWireup="true" CodeBehind="DeliveryDashboard.aspx.cs" Inherits="Pizza_Website.Delivery.DeliveryDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="DeliveryMainContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h2 class="fw-bold mb-1">Rider Dashboard Overview 🛵</h2>
            <p class="text-muted mb-0">Delivery partner portal for order dispatching and status updates</p>
        </div>
        <div>
            <span class="badge bg-success px-3 py-2 fs-6"><i class="fas fa-circle me-1"></i>Status: On Duty</span>
        </div>
    </div>

    <!-- 4 Dashboard Cards -->
    <div class="row g-3 mb-4">
        <div class="col-md-3">
            <div class="stat-card">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span class="text-muted small fw-bold">ASSIGNED ORDERS</span>
                    <div class="stat-icon bg-warning text-dark"><i class="fas fa-clipboard-list"></i></div>
                </div>
                <h3 class="fw-bold mb-0 text-warning">2</h3>
                <small class="text-muted">Requires action</small>
            </div>
        </div>

        <div class="col-md-3">
            <div class="stat-card">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span class="text-muted small fw-bold">PENDING DELIVERIES</span>
                    <div class="stat-icon bg-danger text-white"><i class="fas fa-motorcycle"></i></div>
                </div>
                <h3 class="fw-bold mb-0 text-danger">1</h3>
                <small class="text-danger">En route now</small>
            </div>
        </div>

        <div class="col-md-3">
            <div class="stat-card">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span class="text-muted small fw-bold">COMPLETED DELIVERIES</span>
                    <div class="stat-icon bg-success text-white"><i class="fas fa-check-double"></i></div>
                </div>
                <h3 class="fw-bold mb-0 text-success">84</h3>
                <small class="text-success">Total fulfilled</small>
            </div>
        </div>

        <div class="col-md-3">
            <div class="stat-card">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span class="text-muted small fw-bold">TODAY'S DELIVERIES</span>
                    <div class="stat-icon bg-info text-white"><i class="fas fa-calendar-day"></i></div>
                </div>
                <h3 class="fw-bold mb-0">8</h3>
                <small class="text-muted">₹320 tips earned</small>
            </div>
        </div>
    </div>

    <!-- Quick Actions -->
    <div class="row g-4">
        <div class="col-md-4">
            <a href="AssignedOrders.aspx" class="card border-0 shadow-sm p-4 text-center text-decoration-none text-dark h-100">
                <div class="text-primary display-5 mb-2"><i class="fas fa-list-alt"></i></div>
                <h5 class="fw-bold">View Assigned Orders</h5>
                <p class="text-muted small mb-0">Check order locations & customer contacts</p>
            </a>
        </div>
        <div class="col-md-4">
            <a href="AssignedOrders.aspx" class="card border-0 shadow-sm p-4 text-center text-decoration-none text-dark h-100">
                <div class="text-success display-5 mb-2"><i class="fas fa-toggle-on"></i></div>
                <h5 class="fw-bold">Update Delivery Status</h5>
                <p class="text-muted small mb-0">Mark as Accepted, Out for Delivery, or Delivered</p>
            </a>
        </div>
        <div class="col-md-4">
            <a href="DeliveryProfile.aspx" class="card border-0 shadow-sm p-4 text-center text-decoration-none text-dark h-100">
                <div class="text-warning display-5 mb-2"><i class="fas fa-user-cog"></i></div>
                <h5 class="fw-bold">My Delivery Profile</h5>
                <p class="text-muted small mb-0">Manage vehicle info & phone contact</p>
            </a>
        </div>
    </div>
</asp:Content>
