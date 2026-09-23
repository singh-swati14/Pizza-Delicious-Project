<%@ Page Title="Delivery Profile" Language="C#" MasterPageFile="~/Delivery/Delivery.Master" AutoEventWireup="true" CodeBehind="DeliveryProfile.aspx.cs" Inherits="Pizza_Website.Delivery.DeliveryProfile" %>

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
    </div>
</asp:Content>
