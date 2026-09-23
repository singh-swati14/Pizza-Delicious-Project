<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Pizza_Website.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-5">
        <div class="row justify-content-center mb-5">
            <div class="col-md-8 col-lg-7">
                <div class="card border-0 shadow-lg rounded-4 overflow-hidden">
                    <div class="bg-danger text-white text-center py-4 px-3">
                        <h3 class="fw-bold mb-1">Create Your Account</h3>
                        <p class="small mb-0 opacity-75">Join Pizza Palace for fast ordering & exclusive offers</p>
                    </div>

                    <div class="card-body p-4 p-md-5">
                        <!-- Message Label -->
                        <asp:Label ID="lblMessage" runat="server" EnableViewState="false"></asp:Label>

                        <div class="row g-3">
                            <!-- Full Name -->
                            <div class="col-12">
                                <label class="form-label font-weight-bold">Full Name <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text bg-light"><i class="fas fa-user text-muted"></i></span>
                                    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="John Doe"></asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName"
                                    ErrorMessage="Full Name is required." ForeColor="Red" Display="Dynamic" CssClass="small"></asp:RequiredFieldValidator>
                            </div>

                            <!-- Email Address -->
                            <div class="col-md-6">
                                <label class="form-label font-weight-bold">Email Address <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text bg-light"><i class="fas fa-envelope text-muted"></i></span>
                                    <asp:TextBox ID="txtRegEmail" runat="server" CssClass="form-control" placeholder="john@example.com"></asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtRegEmail"
                                    ErrorMessage="Email is required." ForeColor="Red" Display="Dynamic" CssClass="small"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtRegEmail"
                                    ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"
                                    ErrorMessage="Enter a valid email address." ForeColor="Red" Display="Dynamic" CssClass="small"></asp:RegularExpressionValidator>
                            </div>

                            <!-- Mobile Number -->
                            <div class="col-md-6">
                                <label class="form-label font-weight-bold">Mobile Number <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text bg-light"><i class="fas fa-phone text-muted"></i></span>
                                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="9876543210"></asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtMobile"
                                    ErrorMessage="Mobile Number is required." ForeColor="Red" Display="Dynamic" CssClass="small"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="txtMobile"
                                    ValidationExpression="^[0-9]{10,12}$"
                                    ErrorMessage="Enter a valid 10-12 digit mobile number." ForeColor="Red" Display="Dynamic" CssClass="small"></asp:RegularExpressionValidator>
                            </div>

                            <!-- Password -->
                            <div class="col-md-6">
                                <label class="form-label font-weight-bold">Password <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text bg-light"><i class="fas fa-lock text-muted"></i></span>
                                    <asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="••••••••"></asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtRegPassword"
                                    ErrorMessage="Password is required." ForeColor="Red" Display="Dynamic" CssClass="small"></asp:RequiredFieldValidator>
                            </div>

                            <!-- Confirm Password -->
                            <div class="col-md-6">
                                <label class="form-label font-weight-bold">Confirm Password <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text bg-light"><i class="fas fa-lock text-muted"></i></span>
                                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="••••••••"></asp:TextBox>
                                </div>
                                <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtRegPassword"
                                    ErrorMessage="Passwords do not match." ForeColor="Red" Display="Dynamic" CssClass="small"></asp:CompareValidator>
                            </div>

                            <!-- Delivery Address -->
                            <div class="col-12">
                                <label class="form-label font-weight-bold">Delivery Address <span class="text-danger">*</span></label>
                                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control" placeholder="Flat / House No., Street, City, Pincode"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress"
                                    ErrorMessage="Address is required." ForeColor="Red" Display="Dynamic" CssClass="small"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <!-- Buttons -->
                        <div class="d-flex gap-3 mt-4">
                            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-pizza flex-grow-1 py-2" OnClick="btnRegister_Click" />
                            <button type="reset" class="btn btn-light border flex-grow-1 py-2">
                                <i class="fas fa-undo me-2"></i>Reset
                           
                            </button>
                        </div>

                        <div class="text-center mt-4">
                            <span class="text-muted small">Already have an account? </span>
                            <a href="Login.aspx" class="text-danger fw-bold text-decoration-none">Login Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- PART 5 — REGISTRATION GRIDVIEW -->
        <div class="row justify-content-center">
            <div class="col-12">
                <div class="card border-0 shadow-sm rounded-3 overflow-hidden">
                    <div class="card-header bg-dark text-white py-3">
                        <h4 class="fw-bold mb-0"><i class="fas fa-users text-warning me-2"></i>Registered Users</h4>
                    </div>
                    <div class="table-responsive">
                        <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="False" OnRowCommand="gvUsers_RowCommand"
                            CssClass="table table-striped table-hover align-middle mb-0 custom-table"
                            EmptyDataText="No registered users found." GridLines="None">
                            <HeaderStyle CssClass="table-dark" />
                            <AlternatingRowStyle CssClass="table-light" />
                            <Columns>
                                <asp:BoundField DataField="UserId" HeaderText="ID" ItemStyle-Font-Bold="true" />
                                <asp:BoundField DataField="FullName" HeaderText="Name" />
                                <asp:BoundField DataField="Email" HeaderText="Email" />
                                <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                                <asp:BoundField DataField="Address" HeaderText="Address" />
                                <asp:TemplateField HeaderText="Role">
                                    <ItemTemplate>
                                        <span class="badge bg-primary"><%# Eval("Role") %></span>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Status">
                                    <ItemTemplate>
                                        <span class="badge bg-success"><%# Eval("Status") %></span>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="CreatedDate" HeaderText="Date Registered" DataFormatString="{0:yyyy-MM-dd HH:mm}" />
                                <asp:TemplateField HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("UserId") %>' CommandName="cmd_edt">Edit</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("UserId") %>' CommandName="cmd_dlt">Delete</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
