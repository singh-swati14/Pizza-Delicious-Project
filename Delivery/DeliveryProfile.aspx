<%@ Page Title="Delivery Profile" Language="C#" MasterPageFile="~/Delivery/Delivery.Master" AutoEventWireup="true" CodeBehind="DeliveryProfile.aspx.cs" Inherits="Pizza_Website.Delivery.DeliveryProfile" %>
<<<<<<< HEAD
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DeliveryMainContent" runat="server">
    <div class="mb-4"><h2 class="fw-bold mb-1"><i class="fas fa-user-cog text-danger me-2"></i>Delivery Partner Profile</h2><p class="text-muted mb-0">Update your contact and vehicle details.</p></div>
    <asp:Label ID="lblMessage" runat="server" CssClass="d-block mb-3"></asp:Label>
    <div class="card border-0 shadow-sm rounded-3 p-4 p-md-5 bg-white">
        <div class="row g-4">
            <div class="col-md-6"><label class="form-label fw-bold">Rider Full Name</label><asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox></div>
            <div class="col-md-6"><label class="form-label fw-bold">Email Address</label><asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox></div>
            <div class="col-md-6"><label class="form-label fw-bold">Mobile Phone</label><asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox></div>
            <div class="col-md-6"><label class="form-label fw-bold">Vehicle Registration Number</label><asp:TextBox ID="txtVehicle" runat="server" CssClass="form-control"></asp:TextBox></div>
            <div class="col-12"><label class="form-label fw-bold">Residential Address</label><asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"></asp:TextBox></div>
            <div class="col-md-6"><label class="form-label fw-bold">New Password</label><asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Leave blank to keep current password"></asp:TextBox></div>
            <div class="col-md-6"><label class="form-label fw-bold">Status</label><asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select"><asp:ListItem Text="Available" Value="Available" /><asp:ListItem Text="Busy" Value="Busy" /><asp:ListItem Text="Offline" Value="Offline" /></asp:DropDownList></div>
        </div>
        <div class="mt-4"><asp:Button ID="btnSave" runat="server" Text="Save Details" CssClass="btn btn-pizza px-4" OnClick="btnSave_Click" /></div>
=======

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="DeliveryMainContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h2 class="fw-bold mb-1"><i class="fas fa-user-cog text-danger me-2"></i>Delivery Partner Profile</h2>
            <p class="text-muted mb-0">Rider profile, contact info, and registered vehicle details</p>
        </div>
    </div>

    <div class="card border-0 shadow-sm rounded-3 p-4 p-md-5 bg-white">
        <div class="row g-4">
            <div class="col-md-6">
                <label class="form-label font-weight-bold">Rider Full Name</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Text="Rahul Sharma"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <label class="form-label font-weight-bold">Email Address</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Text="rahul.sharma@pizzapalace.com"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <label class="form-label font-weight-bold">Mobile Phone</label>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Text="+91 98111 22233"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <label class="form-label font-weight-bold">Vehicle Registration Number</label>
                <asp:TextBox ID="txtVehicle" runat="server" CssClass="form-control" Text="MH 01 AB 1234 (Honda Activa 6G)"></asp:TextBox>
            </div>
            <div class="col-12">
                <label class="form-label font-weight-bold">Residential Address</label>
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control" Text="Room 12, Ganesh Chawl, Kurla West, Mumbai - 400070"></asp:TextBox>
            </div>
        </div>

        <div class="d-flex gap-3 mt-4">
            <button type="button" class="btn btn-pizza px-4">
                <i class="fas fa-save me-2"></i>Save Details
            </button>
            <button type="button" class="btn btn-outline-secondary px-4">
                <i class="fas fa-edit me-2"></i>Edit Profile
            </button>
        </div>
>>>>>>> f6d00a40191ed24fd0b3230de093c32c2e8f5c09
    </div>
</asp:Content>
