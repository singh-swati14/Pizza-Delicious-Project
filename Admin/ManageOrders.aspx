<%@ Page Title="Manage Orders" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageOrders.aspx.cs" Inherits="Pizza_Website.Admin.ManageOrders" %>
<<<<<<< HEAD
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
=======

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h2 class="fw-bold mb-1"><i class="fas fa-shopping-bag text-danger me-2"></i>Manage Customer Orders</h2>
            <p class="text-muted mb-0">Track live orders, update cooking status, and assign delivery partners</p>
        </div>
    </div>

    <div class="card border-0 shadow-sm rounded-3 overflow-hidden">
        <div class="table-responsive">
            <table class="table align-middle mb-0 custom-table">
                <thead>
                    <tr>
                        <th class="ps-4">Order ID</th>
                        <th>Customer</th>
                        <th>Date & Time</th>
                        <th>Amount</th>
                        <th>Payment</th>
                        <th>Order Status</th>
                        <th>Delivery Person</th>
                        <th class="text-end pe-4">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="ps-4 fw-bold text-danger">#PIZZA1001</td>
                        <td>John Doe</td>
                        <td>14 Sep 2026, 08:30 PM</td>
                        <td class="fw-bold">₹1,131.48</td>
                        <td><span class="badge bg-success">Paid (Card)</span></td>
                        <td>
                            <select class="form-select form-select-sm border-warning fw-bold">
                                <option>Pending</option>
                                <option>Confirmed</option>
                                <option>Preparing</option>
                                <option selected>Out for Delivery</option>
                                <option>Delivered</option>
                                <option>Cancelled</option>
                            </select>
                        </td>
                        <td>
                            <select class="form-select form-select-sm">
                                <option selected>Rahul Sharma</option>
                                <option>Amit Kumar</option>
                                <option>Vikash Yadav</option>
                            </select>
                        </td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-pizza-outline"><i class="fas fa-save"></i> Update</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="ps-4 fw-bold text-danger">#PIZZA1000</td>
                        <td>Anita Roy</td>
                        <td>14 Sep 2026, 08:12 PM</td>
                        <td class="fw-bold">₹499.00</td>
                        <td><span class="badge bg-warning text-dark">COD</span></td>
                        <td>
                            <select class="form-select form-select-sm border-info fw-bold">
                                <option>Pending</option>
                                <option>Confirmed</option>
                                <option selected>Preparing</option>
                                <option>Out for Delivery</option>
                                <option>Delivered</option>
                                <option>Cancelled</option>
                            </select>
                        </td>
                        <td>
                            <select class="form-select form-select-sm">
                                <option value="">Assign Driver...</option>
                                <option>Rahul Sharma</option>
                                <option selected>Amit Kumar</option>
                                <option>Vikash Yadav</option>
                            </select>
                        </td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-pizza-outline"><i class="fas fa-save"></i> Update</button>
                        </td>
                    </tr>
                    <tr>
                        <td class="ps-4 fw-bold text-danger">#PIZZA0999</td>
                        <td>Vikram Singh</td>
                        <td>14 Sep 2026, 07:55 PM</td>
                        <td class="fw-bold">₹899.00</td>
                        <td><span class="badge bg-success">Paid (UPI)</span></td>
                        <td>
                            <select class="form-select form-select-sm border-success fw-bold">
                                <option>Pending</option>
                                <option>Confirmed</option>
                                <option>Preparing</option>
                                <option>Out for Delivery</option>
                                <option selected>Delivered</option>
                                <option>Cancelled</option>
                            </select>
                        </td>
                        <td>
                            <select class="form-select form-select-sm">
                                <option selected>Vikash Yadav</option>
                            </select>
                        </td>
                        <td class="text-end pe-4">
                            <button class="btn btn-sm btn-pizza-outline"><i class="fas fa-save"></i> Update</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
>>>>>>> f6d00a40191ed24fd0b3230de093c32c2e8f5c09
</asp:Content>
