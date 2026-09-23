<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Pizza_Website.Admin.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-5">
                <div class="card border-0 shadow-lg rounded-4 overflow-hidden">
                    <div class="bg-dark text-white text-center py-4 px-3">
                        <h3 class="fw-bold mb-1 text-warning"><i class="fas fa-user-shield me-2"></i>Admin Portal Login</h3>
                        <p class="small mb-0 opacity-75">Restricted area for Pizza Palace Administrators</p>
                    </div>

                    <div class="card-body p-4 p-md-5">
                        <!-- Message Label -->
                        <asp:Label ID="lblAdminMessage" runat="server" EnableViewState="false"></asp:Label>

                        <div class="mb-3">
                            <label class="form-label font-weight-bold">Admin Username</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light"><i class="fas fa-user-tag text-muted"></i></span>
                                <asp:TextBox ID="txtAdminUsername" runat="server" CssClass="form-control" placeholder="admin"></asp:TextBox>
                            </div>
                        </div>

                        <div class="mb-4">
                            <label class="form-label font-weight-bold">Password</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light"><i class="fas fa-key text-muted"></i></span>
                                <asp:TextBox ID="txtAdminPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="••••••••"></asp:TextBox>
                            </div>
                        </div>

                        <div class="d-grid mb-3">
                            <asp:Button ID="btnAdminLogin" runat="server" Text="Admin Login" CssClass="btn btn-dark btn-lg py-2 fw-bold" OnClick="btnAdminLogin_Click" />
                        </div>

                        <div class="text-center mt-4">
                            <a href="../Login.aspx" class="text-secondary text-decoration-none small">
                                <i class="fas fa-arrow-left me-1"></i>Back to Customer Login
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
