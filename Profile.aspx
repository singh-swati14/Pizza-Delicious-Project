<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Pizza_Website.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-7">
                <div class="card border-0 shadow-lg rounded-4 overflow-hidden">
                    <div class="bg-danger text-white text-center py-4 px-3">
                        <img src="Images/avatar.jpg" class="rounded-circle border border-4 border-white shadow mb-2" style="width: 100px; height: 100px; object-fit: cover;" alt="User Profile">
                        <h4 class="fw-bold mb-0">John Doe</h4>
                        <small class="opacity-75">Customer Account</small>
                    </div>

                    <div class="card-body p-4 p-md-5">
                        <div class="row g-3">
                            <div class="col-md-6">
                                <label class="form-label font-weight-bold">Full Name</label>
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Text="John Doe"></asp:TextBox>
                            </div>

                            <div class="col-md-6">
                                <label class="form-label font-weight-bold">Email Address</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Text="john.doe@example.com"></asp:TextBox>
                            </div>

                            <div class="col-md-6">
                                <label class="form-label font-weight-bold">Mobile Number</label>
                                <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" Text="+91 98765 43210"></asp:TextBox>
                            </div>

                            <div class="col-md-6">
                                <label class="form-label font-weight-bold">Member Since</label>
                                <asp:TextBox ID="txtDate" runat="server" CssClass="form-control bg-light" ReadOnly="true" Text="14 September 2026"></asp:TextBox>
                            </div>

                            <div class="col-12">
                                <label class="form-label font-weight-bold">Default Delivery Address</label>
                                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" Text="Flat 402, Sunshine Apartments, Baker Street, Mumbai, Maharashtra - 400001"></asp:TextBox>
                            </div>
                        </div>

                        <div class="d-flex gap-3 mt-4">
                            <button type="button" class="btn btn-pizza flex-grow-1 py-2">
                                <i class="fas fa-save me-2"></i>Save Changes
                            </button>
                            <button type="button" class="btn btn-outline-secondary flex-grow-1 py-2">
                                <i class="fas fa-edit me-2"></i>Edit Profile
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

