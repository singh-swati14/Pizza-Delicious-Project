<%@ Page Title="Checkout" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Pizza_Website.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-5">
        <h2 class="fw-bold mb-4"><i class="fas fa-truck text-danger me-2"></i>Checkout & Delivery Details</h2>

        <div class="row g-4">
            <!-- Left Side: Address Details -->
            <div class="col-lg-7">
                <div class="card border-0 shadow-sm rounded-3">
                    <div class="card-header bg-white py-3 border-bottom">
                        <h5 class="fw-bold mb-0"><i class="fas fa-map-marker-alt text-danger me-2"></i>Delivery Address</h5>
                    </div>
                    <div class="card-body p-4">
                        <div class="row g-3">
                            <div class="col-md-6">
                                <label class="form-label font-weight-bold">Full Name</label>
                                <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" Text="John Doe"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label font-weight-bold">Mobile Phone</label>
                                <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" Text="+91 98765 43210"></asp:TextBox>
                            </div>
                            <div class="col-12">
                                <label class="form-label font-weight-bold">Street Address / House No.</label>
                                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control" Text="Flat 402, Sunshine Apartments, Baker Street"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label font-weight-bold">City</label>
                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" Text="Mumbai"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label font-weight-bold">State</label>
                                <asp:TextBox ID="txtState" runat="server" CssClass="form-control" Text="Maharashtra"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label font-weight-bold">Pincode</label>
                                <asp:TextBox ID="txtPincode" runat="server" CssClass="form-control" Text="400001"></asp:TextBox>
                            </div>
                            <div class="col-12">
                                <label class="form-label font-weight-bold">Delivery Instructions (Optional)</label>
                                <asp:TextBox ID="txtNotes" runat="server" CssClass="form-control" placeholder="e.g. Ring the bell twice / Leave with security"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right Side: Order Summary -->
            <div class="col-lg-5">
                <div class="card border-0 shadow-sm rounded-3">
                    <div class="card-header bg-dark text-white py-3">
                        <h5 class="fw-bold mb-0">Your Order Review</h5>
                    </div>
                    <div class="card-body p-4">
                        <div class="mb-3">
                            <div class="d-flex justify-content-between mb-2">
                                <span>1x Margherita Supreme (Medium)</span>
                                <span class="fw-bold">299.00</span>
                            </div>
                            <div class="d-flex justify-content-between mb-2">
                                <span>1x Pepperoni Feast (Medium)</span>
                                <span class="fw-bold">449.00</span>
                            </div>
                            <div class="d-flex justify-content-between mb-2">
                                <span>1x Four Cheese Burst (Medium)</span>
                                <span class="fw-bold">549.00</span>
                            </div>
                        </div>

                        <hr>

                        <div class="d-flex justify-content-between mb-2">
                            <span class="text-muted">Subtotal</span>
                            <span>1,297.00</span>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <span class="text-muted">Delivery Fee</span>
                            <span class="text-success fw-bold">40.00</span>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <span class="text-muted">Discount (PIZZA20)</span>
                            <span class="text-danger fw-bold">- 259.40</span>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <span class="text-muted">GST (5%)</span>
                            <span>53.88</span>
                        </div>

                        <hr class="my-3">

                        <div class="d-flex justify-content-between mb-4">
                            <span class="fs-5 fw-bold">Total Amount Payable</span>
                            <span class="fs-4 fw-bold text-danger">1,131.48</span>
                        </div>

                        <div class="d-grid gap-2">
                            <a href="Payment.aspx" class="btn btn-pizza btn-lg py-2 fs-5">
                                Proceed to Payment <i class="fas fa-credit-card ms-2"></i>
                            </a>
                            <a href="Cart.aspx" class="btn btn-outline-secondary">
                                <i class="fas fa-arrow-left me-1"></i>Back to Cart
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
