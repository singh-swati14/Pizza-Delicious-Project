<%@ Page Title="Assigned Orders" Language="C#" MasterPageFile="~/Delivery/Delivery.Master" AutoEventWireup="true" CodeBehind="AssignedOrders.aspx.cs" Inherits="Pizza_Website.Delivery.AssignedOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DeliveryMainContent" runat="server">
    <div class="mb-4"><h2 class="fw-bold mb-1"><i class="fas fa-clipboard-list text-danger me-2"></i>Assigned Delivery Orders</h2><p class="text-muted mb-0">Only orders assigned to your rider account are shown.</p></div>
    <asp:Label ID="lblMessage" runat="server" CssClass="d-block mb-3"></asp:Label>
    <div class="card border-0 shadow-sm rounded-3 overflow-hidden"><div class="table-responsive"><asp:GridView ID="gvOrders" runat="server" AutoGenerateColumns="False" CssClass="table align-middle mb-0 custom-table" GridLines="None" EmptyDataText="No orders are assigned to you." OnRowCommand="gvOrders_RowCommand">
        <Columns>
            <asp:BoundField DataField="OrderId" HeaderText="Order ID" />
            <asp:BoundField DataField="CustomerName" HeaderText="Customer" />
            <asp:BoundField DataField="DeliveryAddress" HeaderText="Address" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" />
            <asp:BoundField DataField="Amount" HeaderText="Amount (₹)" DataFormatString="{0:0.00}" />
            <asp:BoundField DataField="OrderStatus" HeaderText="Status" />
            <asp:TemplateField HeaderText="Action"><ItemTemplate>
                <asp:Button ID="btnPickup" runat="server" Text="Accept / Pickup" CssClass="btn btn-sm btn-warning me-1" CommandName="Pickup" CommandArgument='<%# Eval("OrderId") %>' CausesValidation="false" />
                <asp:Button ID="btnDelivered" runat="server" Text="Mark Delivered" CssClass="btn btn-sm btn-success" CommandName="Delivered" CommandArgument='<%# Eval("OrderId") %>' CausesValidation="false" OnClientClick="return confirm('Mark this order as delivered?');" />
            </ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView></div></div>
</asp:Content>
