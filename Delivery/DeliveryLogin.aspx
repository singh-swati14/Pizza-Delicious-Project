<%@ Page Title="Delivery Partner Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeliveryLogin.aspx.cs" Inherits="Pizza_Website.Delivery.DeliveryLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-5"><div class="row justify-content-center"><div class="col-md-6 col-lg-5">
        <div class="card border-0 shadow-lg rounded-4 overflow-hidden">
            <div class="bg-dark text-white text-center py-4 px-3"><h3 class="fw-bold mb-1 text-warning"><i class="fas fa-motorcycle me-2"></i>Delivery Partner Login</h3><p class="small mb-0 opacity-75">Login to your delivery panel</p></div>
            <div class="card-body p-4 p-md-5">
                <asp:Label ID="lblMessage" runat="server" EnableViewState="false"></asp:Label>
                <div class="mb-3"><label class="form-label fw-bold">Email</label><asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="rider@example.com"></asp:TextBox></div>
                <div class="mb-4"><label class="form-label fw-bold">Password</label><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password"></asp:TextBox></div>
                <div class="d-grid"><asp:Button ID="btnLogin" runat="server" Text="Delivery Login" CssClass="btn btn-pizza btn-lg" OnClick="btnLogin_Click" /></div>
                <div class="text-center mt-4"><a href="~/Login.aspx" runat="server" class="text-secondary text-decoration-none small"><i class="fas fa-arrow-left me-1"></i>Back to Customer Login</a></div>
            </div>
        </div>
    </div></div></div>
</asp:Content>
