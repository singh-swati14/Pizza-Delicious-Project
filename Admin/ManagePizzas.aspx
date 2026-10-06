<%@ Page Title="Manage Pizzas" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManagePizzas.aspx.cs" Inherits="Pizza_Website.Admin.ManagePizzas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4"><div><h2 class="fw-bold mb-1"><i class="fas fa-pizza-slice text-danger me-2"></i>Manage Pizza Menu</h2><p class="text-muted mb-0">Add, edit and delete pizzas.</p></div><asp:Button ID="btnNewPizza" runat="server" Text="Add New Pizza" CssClass="btn btn-pizza" OnClick="btnNewPizza_Click" CausesValidation="false" /></div>
    <asp:Label ID="lblMessage" runat="server" CssClass="d-block mb-3"></asp:Label>
    <asp:Panel ID="pnlPizza" runat="server" CssClass="card border-0 shadow-sm rounded-3 p-4 mb-4">
        <h5 class="fw-bold mb-3"><asp:Label ID="lblFormTitle" runat="server" Text="Add New Pizza"></asp:Label></h5>
        <div class="row g-3">
            <div class="col-md-6"><label class="form-label fw-bold">Pizza Name</label><asp:TextBox ID="txtPizzaName" runat="server" CssClass="form-control" placeholder="Mexican Fiesta"></asp:TextBox><asp:RequiredFieldValidator ID="rfvPizzaName" runat="server" ControlToValidate="txtPizzaName" ErrorMessage="Pizza name is required." CssClass="text-danger" Display="Dynamic" /></div>
            <div class="col-md-6"><label class="form-label fw-bold">Category</label><asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select"></asp:DropDownList></div>
            <div class="col-md-4"><label class="form-label fw-bold">Medium Price (₹)</label><asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox><asp:RequiredFieldValidator ID="rfvPrice" runat="server" ControlToValidate="txtPrice" ErrorMessage="Price is required." CssClass="text-danger" Display="Dynamic" /></div>
            <div class="col-md-4"><label class="form-label fw-bold">Status</label><asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select"><asp:ListItem Text="Available" Value="Available" /><asp:ListItem Text="Out of Stock" Value="Out of Stock" /></asp:DropDownList></div>
            <div class="col-md-4"><label class="form-label fw-bold">Image</label><asp:DropDownList ID="ddlImage" runat="server" CssClass="form-select"><asp:ListItem Text="pizza1.jpg" Value="pizza1.jpg" /><asp:ListItem Text="pizza2.jpg" Value="pizza2.jpg" /><asp:ListItem Text="pizza3.jpg" Value="pizza3.jpg" /><asp:ListItem Text="pizza4.jpg" Value="pizza4.jpg" /><asp:ListItem Text="pizza5.jpg" Value="pizza5.jpg" /><asp:ListItem Text="pizza6.jpg" Value="pizza6.jpg" /><asp:ListItem Text="pizza7.jpg" Value="pizza7.jpg" /><asp:ListItem Text="pizza8.jpg" Value="pizza8.jpg" /><asp:ListItem Text="pizza9.jpg" Value="pizza9.jpg" /><asp:ListItem Text="pizza10.jpg" Value="pizza10.jpg" /><asp:ListItem Text="pizza11.jpg" Value="pizza11.jpg" /><asp:ListItem Text="pizza12.jpg" Value="pizza12.jpg" /></asp:DropDownList></div>
            <div class="col-12"><label class="form-label fw-bold">Description</label><asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"></asp:TextBox></div>
        </div>
        <div class="mt-3"><asp:Button ID="btnSave" runat="server" Text="Save Pizza" CssClass="btn btn-pizza me-2" OnClick="btnSave_Click" /><asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-outline-secondary" OnClick="btnCancel_Click" CausesValidation="false" /></div>
    </asp:Panel>

    <div class="card border-0 shadow-sm rounded-3 overflow-hidden"><div class="table-responsive"><asp:GridView ID="gvPizzas" runat="server" AutoGenerateColumns="False" CssClass="table align-middle mb-0 custom-table" GridLines="None" EmptyDataText="No pizzas found." OnRowCommand="gvPizzas_RowCommand">
        <Columns>
            <asp:BoundField DataField="PizzaId" HeaderText="ID" />
            <asp:TemplateField HeaderText="Image"><ItemTemplate><img src='<%# ResolveUrl("~/Images/" + Eval("ImageUrl")) %>' style="width:55px;height:55px;object-fit:cover;border-radius:8px;" /></ItemTemplate></asp:TemplateField>
            <asp:BoundField DataField="PizzaName" HeaderText="Pizza Name" />
            <asp:BoundField DataField="CategoryName" HeaderText="Category" />
            <asp:BoundField DataField="Price" HeaderText="Price (₹)" DataFormatString="{0:0.00}" />
            <asp:BoundField DataField="Status" HeaderText="Status" />
            <asp:TemplateField HeaderText="Actions"><ItemTemplate><asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn btn-sm btn-outline-warning me-1" CommandName="EditPizza" CommandArgument='<%# Eval("PizzaId") %>' CausesValidation="false" /><asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-sm btn-outline-danger" CommandName="DeletePizza" CommandArgument='<%# Eval("PizzaId") %>' CausesValidation="false" OnClientClick="return confirm('Delete this pizza?');" /></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView></div></div>
</asp:Content>
