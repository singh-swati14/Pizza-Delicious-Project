<%@ Page Title="Manage Users" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="Pizza_Website.Admin.ManageUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4"><div><h2 class="fw-bold mb-1"><i class="fas fa-users text-danger me-2"></i>Manage System Users</h2><p class="text-muted mb-0">Add, edit and delete customer accounts.</p></div><asp:Button ID="btnNewUser" runat="server" Text="Add New User" CssClass="btn btn-pizza" OnClick="btnNewUser_Click" CausesValidation="false" /></div>
    <asp:Label ID="lblMessage" runat="server" CssClass="d-block mb-3"></asp:Label>
    <asp:Panel ID="pnlUser" runat="server" CssClass="card border-0 shadow-sm rounded-3 p-4 mb-4">
        <h5 class="fw-bold mb-3"><asp:Label ID="lblFormTitle" runat="server" Text="Add New User"></asp:Label></h5>
        <div class="row g-3">
            <div class="col-md-6"><label class="form-label fw-bold">Full Name</label><asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Name is required." CssClass="text-danger" Display="Dynamic" /></div>
            <div class="col-md-6"><label class="form-label fw-bold">Email</label><asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." CssClass="text-danger" Display="Dynamic" /></div>
            <div class="col-md-6"><label class="form-label fw-bold">Mobile</label><asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"></asp:TextBox><asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtMobile" ErrorMessage="Mobile is required." CssClass="text-danger" Display="Dynamic" /></div>
            <div class="col-md-6"><label class="form-label fw-bold">Password</label><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter password"></asp:TextBox></div>
            <div class="col-md-6"><label class="form-label fw-bold">Role</label><asp:DropDownList ID="ddlRole" runat="server" CssClass="form-select"><asp:ListItem Text="User" Value="User" /></asp:DropDownList></div>
            <div class="col-md-6"><label class="form-label fw-bold">Status</label><asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select"><asp:ListItem Text="Active" Value="Active" /><asp:ListItem Text="Inactive" Value="Inactive" /></asp:DropDownList></div>
            <div class="col-12"><label class="form-label fw-bold">Address</label><asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"></asp:TextBox></div>
        </div>
        <div class="mt-3"><asp:Button ID="btnSave" runat="server" Text="Save User" CssClass="btn btn-pizza me-2" OnClick="btnSave_Click" /><asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-outline-secondary" OnClick="btnCancel_Click" CausesValidation="false" /></div>
    </asp:Panel>

    <div class="card border-0 shadow-sm rounded-3 overflow-hidden"><div class="table-responsive"><asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="False" CssClass="table align-middle mb-0 custom-table" GridLines="None" EmptyDataText="No users found." OnRowCommand="gvUsers_RowCommand">
        <Columns>
            <asp:BoundField DataField="UserId" HeaderText="ID" />
            <asp:BoundField DataField="FullName" HeaderText="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
            <asp:BoundField DataField="Role" HeaderText="Role" />
            <asp:BoundField DataField="Status" HeaderText="Status" />
            <asp:BoundField DataField="CreatedDate" HeaderText="Created" DataFormatString="{0:dd-MM-yyyy HH:mm}" />
            <asp:TemplateField HeaderText="Actions"><ItemTemplate><asp:Button ID="btnView" runat="server" Text="View" CssClass="btn btn-sm btn-outline-info me-1" CommandName="ViewUser" CommandArgument='<%# Eval("UserId") %>' CausesValidation="false" /><asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn btn-sm btn-outline-warning me-1" CommandName="EditUser" CommandArgument='<%# Eval("UserId") %>' CausesValidation="false" /><asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-sm btn-outline-danger" CommandName="DeleteUser" CommandArgument='<%# Eval("UserId") %>' CausesValidation="false" OnClientClick="return confirm('Delete this user?');" /></ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView></div></div>
</asp:Content>
