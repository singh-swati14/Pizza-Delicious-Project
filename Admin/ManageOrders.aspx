<%@ Page Title="Manage Orders" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageOrders.aspx.cs" Inherits="Pizza_Website.Admin.ManageOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="mb-4"><h2 class="fw-bold mb-1"><i class="fas fa-shopping-bag text-danger me-2"></i>Manage Customer Orders</h2><p class="text-muted mb-0">Update order status and assign delivery partners.</p></div>
    <asp:Label ID="lblMessage" runat="server" CssClass="d-block mb-3"></asp:Label>
    <div class="card border-0 shadow-sm rounded-3 overflow-hidden"><div class="table-responsive"><asp:GridView ID="gvOrders" runat="server" AutoGenerateColumns="False" CssClass="table align-middle mb-0 custom-table" GridLines="None" EmptyDataText="No orders found." OnRowCommand="gvOrders_RowCommand" OnRowDataBound="gvOrders_RowDataBound">
        <Columns>
            <asp:BoundField DataField="OrderId" HeaderText="Order ID" />
            <asp:BoundField DataField="CustomerName" HeaderText="Customer" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" />
            <asp:BoundField DataField="DeliveryAddress" HeaderText="Address" />
            <asp:BoundField DataField="Amount" HeaderText="Amount (₹)" DataFormatString="{0:0.00}" />
            <asp:BoundField DataField="PaymentMethod" HeaderText="Payment" />
            <asp:TemplateField HeaderText="Order Status"><ItemTemplate><asp:DropDownList ID="ddlOrderStatus" runat="server" CssClass="form-select form-select-sm"><asp:ListItem Text="Pending" Value="Pending" /><asp:ListItem Text="Confirmed" Value="Confirmed" /><asp:ListItem Text="Preparing" Value="Preparing" /><asp:ListItem Text="Out for Delivery" Value="Out for Delivery" /><asp:ListItem Text="Delivered" Value="Delivered" /><asp:ListItem Text="Cancelled" Value="Cancelled" /></asp:DropDownList></ItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="Delivery Partner"><ItemTemplate><asp:DropDownList ID="ddlDelivery" runat="server" CssClass="form-select form-select-sm"></asp:DropDownList></ItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="Actions"><ItemTemplate><asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-sm btn-pizza-outline me-1" CommandName="UpdateOrder" CommandArgument='<%# Eval("OrderId") %>' CausesValidation="false" /><asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-sm btn-outline-danger" CommandName="DeleteOrder" CommandArgument='<%# Eval("OrderId") %>' CausesValidation="false" OnClientClick="return confirm('Delete this order?');" /></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView></div></div>
</asp:Content>
