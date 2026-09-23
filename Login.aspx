<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Pizza_Website.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-5">
                <div class="card border-0 shadow-lg rounded-4 overflow-hidden">
                    <div class="bg-danger text-white text-center py-4 px-3">
                        <h3 class="fw-bold mb-1"> Welcome Back!</h3>
                        <p class="small mb-0 opacity-75">Sign in to your Customer Account</p>
                    </div>

                    <div class="card-body p-4 p-md-5">
                        <!-- Message Label -->
                        <asp:Label ID="lblLoginMessage" runat="server" EnableViewState="false"></asp:Label>

                        <!-- User Login Form -->
                        <div class="mb-3">
                            <label class="form-label font-weight-bold">Email Address</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light"><i class="fas fa-envelope text-muted"></i></span>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="user@example.com"></asp:TextBox>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label font-weight-bold">Password</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light"><i class="fas fa-lock text-muted"></i></span>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="••••••••"></asp:TextBox>
                            </div>
                        </div>

                        <div class="d-flex justify-content-between align-items-center mb-4">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="chkRemember">
                                <label class="form-check-label small" for="chkRemember">Remember me</label>
                            </div>
                            <a href="#" class="small text-danger text-decoration-none">Forgot Password?</a>
                        </div>

                        <div class="d-grid mb-3">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-pizza btn-lg py-2" OnClick="btnLogin_Click" />
                        </div>

                        <div class="text-center mb-4">
                            <span class="text-muted small">Don't have an account? </span>
                            <a href="Registration.aspx" class="text-danger fw-bold text-decoration-none">Register Now</a>
                        </div>

                        <hr class="my-4">

                        <!-- Separate Admin Login Navigation -->
                        <div class="text-center">
                            <p class="text-uppercase text-muted small font-weight-bold mb-2">Administrator Access</p>
                            <a href="Admin/AdminLogin.aspx" class="btn btn-outline-dark w-100 rounded-pill py-2 fw-bold">
                                <i class="fas fa-user-shield me-2 text-danger"></i>Go to Admin Login
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
