<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="Pizza_Website.User.MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="UserMainContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h2 class="fw-bold mb-1"><i class="fas fa-id-card text-danger me-2"></i>My Personal Profile</h2>
            <p class="text-muted mb-0">Manage your contact details and default delivery address</p>
        </div>
    </div>

    <div class="card border-0 shadow-sm rounded-3 p-4 p-md-5 bg-white">
        <div class="row g-4">
            <div class="col-md-6">
                <label class="form-label font-weight-bold">Full Name</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Text="John Doe"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <label class="form-label font-weight-bold">Email Address</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Text="john.doe@example.com"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <label class="form-label font-weight-bold">Mobile Phone</label>
                <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" Text="+91 98765 43210"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <label class="form-label font-weight-bold">Preferred Payment Method</label>
                <asp:DropDownList ID="ddlPayment" runat="server" CssClass="form-select">
                    <asp:ListItem Text="Credit / Debit Card" Value="Card" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="UPI / Google Pay" Value="UPI"></asp:ListItem>
                    <asp:ListItem Text="Cash on Delivery" Value="COD"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-12">
                <label class="form-label font-weight-bold">Default Delivery Address</label>
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" Text="Flat 402, Sunshine Apartments, Baker Street, Mumbai, Maharashtra - 400001"></asp:TextBox>
            </div>
        </div>

        <div class="d-flex gap-3 mt-4">
            <button type="button" class="btn btn-pizza px-4">
                <i class="fas fa-save me-2"></i>Save Details
           
            </button>
            <button type="button" class="btn btn-outline-secondary px-4">
                <i class="fas fa-edit me-2"></i>Edit
           
            </button>
        </div>
    </div>
</asp:Content>
