<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Pizza_Website.Admin.AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h2 class="fw-bold mb-1">Admin Dashboard Overview</h2>
            <p class="text-muted mb-0">System performance, order statistics, and live user metrics</p>
        </div>
        <div>
            <a href="ManagePizzas.aspx" class="btn btn-danger"><i class="fas fa-plus me-1"></i> Add New Pizza</a>
        </div>
    </div>

    <!-- 6 Dashboard Cards -->
    <div class="row g-3 mb-4">
        <!-- Card 1: Total Users (Dynamic DB) -->
        <div class="col-md-6 col-lg-2">
            <div class="stat-card">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span class="text-muted small fw-bold">TOTAL USERS</span>
                    <div class="stat-icon bg-primary text-white"><i class="fas fa-users"></i></div>
                </div>
                <h3 class="fw-bold mb-0 text-primary">
                    <asp:Literal ID="litTotalUsers" runat="server">0</asp:Literal>
                </h3>
                <small class="text-success"><i class="fas fa-database me-1"></i>Live DB Count</small>
            </div>
        </div>

        <!-- Card 2: Total Pizzas -->
        <div class="col-md-6 col-lg-2">
            <div class="stat-card">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span class="text-muted small fw-bold">TOTAL PIZZAS</span>
                    <div class="stat-icon bg-warning text-dark"><i class="fas fa-pizza-slice"></i></div>
                </div>
                <h3 class="fw-bold mb-0">24</h3>
                <small class="text-muted">In 6 Categories</small>
            </div>
        </div>

        <!-- Card 3: Total Orders -->
        <div class="col-md-6 col-lg-2">
            <div class="stat-card">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span class="text-muted small fw-bold">TOTAL ORDERS</span>
                    <div class="stat-icon bg-info text-white"><i class="fas fa-shopping-bag"></i></div>
                </div>
                <h3 class="fw-bold mb-0">3,892</h3>
                <small class="text-success"><i class="fas fa-arrow-up me-1"></i>+8% today</small>
            </div>
        </div>

        <!-- Card 4: Pending Orders -->
        <div class="col-md-6 col-lg-2">
            <div class="stat-card">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span class="text-muted small fw-bold">PENDING</span>
                    <div class="stat-icon bg-danger text-white"><i class="fas fa-clock"></i></div>
                </div>
                <h3 class="fw-bold mb-0 text-danger">18</h3>
                <small class="text-danger">Action Required</small>
            </div>
        </div>

        <!-- Card 5: Delivered Orders -->
        <div class="col-md-6 col-lg-2">
            <div class="stat-card">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span class="text-muted small fw-bold">DELIVERED</span>
                    <div class="stat-icon bg-success text-white"><i class="fas fa-check-circle"></i></div>
                </div>
                <h3 class="fw-bold mb-0">3,710</h3>
                <small class="text-success">98.2% fulfillment</small>
            </div>
        </div>

        <!-- Card 6: Total Revenue -->
        <div class="col-md-6 col-lg-2">
            <div class="stat-card">
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span class="text-muted small fw-bold">TOTAL REVENUE</span>
                    <div class="stat-icon bg-dark text-warning"><i class="fas fa-rupee-sign"></i></div>
                </div>
                <h3 class="fw-bold mb-0 text-success">₹4.82L</h3>
                <small class="text-success"><i class="fas fa-arrow-up me-1"></i>+15% monthly</small>
            </div>
        </div>
    </div>

    <!-- Analytics Chart & Recent Orders -->
    <div class="row g-4 mb-4">
        <!-- Sales & Revenue Analytics Chart -->
        <div class="col-lg-7">
            <div class="card border-0 shadow-sm p-4 h-100">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h5 class="fw-bold mb-0"><i class="fas fa-chart-line text-danger me-2"></i>Weekly Sales & Order Analytics</h5>
                    <span class="badge bg-light text-dark border">Last 7 Days</span>
                </div>
                <div class="p-3 bg-light rounded-3 text-center">
                    <svg viewBox="0 0 500 180" class="w-100" style="max-height: 220px;">
                        <line x1="0" y1="30" x2="500" y2="30" stroke="#e0e0e0" stroke-dasharray="4"/>
                        <line x1="0" y1="80" x2="500" y2="80" stroke="#e0e0e0" stroke-dasharray="4"/>
                        <line x1="0" y1="130" x2="500" y2="130" stroke="#e0e0e0" stroke-dasharray="4"/>
                        
                        <defs>
                            <linearGradient id="chartGrad" x1="0" y1="0" x2="0" y2="1">
                                <stop offset="0%" stop-color="#d32f2f" stop-opacity="0.4"/>
                                <stop offset="100%" stop-color="#d32f2f" stop-opacity="0"/>
                            </linearGradient>
                        </defs>
                        <path d="M 20 120 Q 80 40 140 90 T 260 50 T 380 110 T 480 30 L 480 160 L 20 160 Z" fill="url(#chartGrad)" />
                        <path d="M 20 120 Q 80 40 140 90 T 260 50 T 380 110 T 480 30" fill="none" stroke="#d32f2f" stroke-width="4" />
                        
                        <circle cx="20" cy="120" r="5" fill="#d32f2f"/>
                        <circle cx="95" cy="55" r="5" fill="#d32f2f"/>
                        <circle cx="170" cy="95" r="5" fill="#d32f2f"/>
                        <circle cx="250" cy="52" r="5" fill="#d32f2f"/>
                        <circle cx="330" cy="85" r="5" fill="#d32f2f"/>
                        <circle cx="410" cy="70" r="5" fill="#d32f2f"/>
                        <circle cx="480" cy="30" r="5" fill="#d32f2f"/>
                        
                        <text x="20" y="175" font-size="12" fill="#666">Mon</text>
                        <text x="95" y="175" font-size="12" fill="#666">Tue</text>
                        <text x="170" y="175" font-size="12" fill="#666">Wed</text>
                        <text x="250" y="175" font-size="12" fill="#666">Thu</text>
                        <text x="330" y="175" font-size="12" fill="#666">Fri</text>
                        <text x="410" y="175" font-size="12" fill="#666">Sat</text>
                        <text x="480" y="175" font-size="12" fill="#666">Sun</text>
                    </svg>
                </div>
            </div>
        </div>

        <!-- Top Selling Pizzas Breakdown -->
        <div class="col-lg-5">
            <div class="card border-0 shadow-sm p-4 h-100">
                <h5 class="fw-bold mb-3"><i class="fas fa-trophy text-warning me-2"></i>Top Selling Pizzas</h5>
                <div class="d-flex flex-column gap-3">
                    <div>
                        <div class="d-flex justify-content-between small fw-bold mb-1">
                            <span>Margherita Supreme</span>
                            <span class="text-danger">38% (1,420 orders)</span>
                        </div>
                        <div class="progress" style="height: 8px;">
                            <div class="progress-bar bg-danger" style="width: 38%"></div>
                        </div>
                    </div>
                    <div>
                        <div class="d-flex justify-content-between small fw-bold mb-1">
                            <span>Pepperoni Feast</span>
                            <span class="text-warning">27% (1,015 orders)</span>
                        </div>
                        <div class="progress" style="height: 8px;">
                            <div class="progress-bar bg-warning" style="width: 27%"></div>
                        </div>
                    </div>
                    <div>
                        <div class="d-flex justify-content-between small fw-bold mb-1">
                            <span>BBQ Chicken Special</span>
                            <span class="text-info">20% (750 orders)</span>
                        </div>
                        <div class="progress" style="height: 8px;">
                            <div class="progress-bar bg-info" style="width: 20%"></div>
                        </div>
                    </div>
                    <div>
                        <div class="d-flex justify-content-between small fw-bold mb-1">
                            <span>Veggie Delight</span>
                            <span class="text-success">15% (560 orders)</span>
                        </div>
                        <div class="progress" style="height: 8px;">
                            <div class="progress-bar bg-success" style="width: 15%"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
