<%@ Page Title="Manage Delivery Staff" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageDelivery.aspx.cs" Inherits="Pizza_Website.Admin.ManageDelivery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminMainContent" runat="server">

    <!-- Page Header -->
    <div class="d-flex justify-content-between align-items-center mb-4">

        <div>
            <h2 class="fw-bold mb-1">
                <i class="fas fa-motorcycle text-danger me-2"></i>
                Manage Delivery Staff
            </h2>

            <p class="text-muted mb-0">
                Manage delivery partners, vehicle details and availability
            </p>
        </div>

        <div>
            <asp:Button
                ID="btnAddDelivery"
                runat="server"
                Text="Add Delivery Partner"
                CssClass="btn btn-pizza"
                OnClick="btnAddDelivery_Click"
                CausesValidation="false" />
        </div>

    </div>


    <!-- Message -->
    <asp:Label
        ID="lblMessage"
        runat="server"
        CssClass="d-block mb-3">
    </asp:Label>


    <!-- Add / Edit Delivery Form -->
    <asp:Panel
        ID="pnlDeliveryForm"
        runat="server"
        Visible="false"
        CssClass="card border-0 shadow-sm rounded-3 p-4 mb-4">

        <h4 class="fw-bold mb-4">

            <i class="fas fa-user-plus text-danger me-2"></i>

            <asp:Label
                ID="lblFormTitle"
                runat="server"
                Text="Add Delivery Partner">
            </asp:Label>

        </h4>


        <div class="row g-3">

            <!-- Full Name -->
            <div class="col-md-6">

                <label class="form-label fw-bold">
                    Full Name
                </label>

                <asp:TextBox
                    ID="txtFullName"
                    runat="server"
                    CssClass="form-control"
                    placeholder="Enter full name">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvFullName"
                    runat="server"
                    ControlToValidate="txtFullName"
                    ErrorMessage="Full name is required."
                    CssClass="text-danger"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

            </div>


            <!-- Email -->
            <div class="col-md-6">

                <label class="form-label fw-bold">
                    Email
                </label>

                <asp:TextBox
                    ID="txtEmail"
                    runat="server"
                    TextMode="Email"
                    CssClass="form-control"
                    placeholder="Enter email">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvEmail"
                    runat="server"
                    ControlToValidate="txtEmail"
                    ErrorMessage="Email is required."
                    CssClass="text-danger"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

            </div>


            <!-- Mobile -->
            <div class="col-md-6">

                <label class="form-label fw-bold">
                    Mobile
                </label>

                <asp:TextBox
                    ID="txtMobile"
                    runat="server"
                    CssClass="form-control"
                    placeholder="Enter mobile number">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvMobile"
                    runat="server"
                    ControlToValidate="txtMobile"
                    ErrorMessage="Mobile is required."
                    CssClass="text-danger"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

            </div>


            <!-- Password -->
            <div class="col-md-6">

                <label class="form-label fw-bold">
                    Password
                </label>

                <asp:TextBox
                    ID="txtPassword"
                    runat="server"
                    TextMode="Password"
                    CssClass="form-control"
                    placeholder="Enter password">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvPassword"
                    runat="server"
                    ControlToValidate="txtPassword"
                    ErrorMessage="Password is required."
                    CssClass="text-danger"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

            </div>


            <!-- Vehicle Number -->
            <div class="col-md-6">

                <label class="form-label fw-bold">
                    Vehicle Number
                </label>

                <asp:TextBox
                    ID="txtVehicleNumber"
                    runat="server"
                    CssClass="form-control"
                    placeholder="e.g. GJ01AB1234">
                </asp:TextBox>

            </div>


            <!-- Status -->
            <div class="col-md-6">

                <label class="form-label fw-bold">
                    Status
                </label>

                <asp:DropDownList
                    ID="ddlStatus"
                    runat="server"
                    CssClass="form-select">

                    <asp:ListItem
                        Text="Available"
                        Value="Available">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="Busy"
                        Value="Busy">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="Offline"
                        Value="Offline">
                    </asp:ListItem>

                </asp:DropDownList>

            </div>


            <!-- Address -->
            <div class="col-12">

                <label class="form-label fw-bold">
                    Address
                </label>

                <asp:TextBox
                    ID="txtAddress"
                    runat="server"
                    TextMode="MultiLine"
                    Rows="3"
                    CssClass="form-control"
                    placeholder="Enter address">
                </asp:TextBox>

            </div>

        </div>


        <!-- Form Buttons -->
        <div class="mt-4">

            <asp:Button
                ID="btnSave"
                runat="server"
                Text="Save Delivery Partner"
                CssClass="btn btn-pizza me-2"
                OnClick="btnSave_Click" />

            <asp:Button
                ID="btnCancel"
                runat="server"
                Text="Cancel"
                CssClass="btn btn-outline-secondary"
                OnClick="btnCancel_Click"
                CausesValidation="false" />

        </div>

    </asp:Panel>


    <!-- Delivery Grid -->
    <div class="card border-0 shadow-sm rounded-3 overflow-hidden">

        <div class="card-header bg-dark text-white p-3">

            <h5 class="mb-0 fw-bold">
                <i class="fas fa-users me-2"></i>
                Delivery Partners
            </h5>

        </div>


        <div class="table-responsive">

            <asp:GridView
                ID="gvDelivery"
                runat="server"
                AutoGenerateColumns="False"
                CssClass="table align-middle mb-0 custom-table"
                GridLines="None"
                OnRowCommand="gvDelivery_RowCommand"
                EmptyDataText="No delivery partners found.">

                <Columns>

                    <asp:BoundField
                        DataField="DeliveryId"
                        HeaderText="Rider ID" />

                    <asp:TemplateField HeaderText="Name">

                        <ItemTemplate>

                            <div class="d-flex align-items-center">

                                <img
                                    src="../Images/delivery.jpg"
                                    class="rounded-circle me-2"
                                    style="width:35px;height:35px;object-fit:cover;"
                                    alt="Delivery" />

                                <span class="fw-bold">
                                    <%# Eval("FullName") %>
                                </span>

                            </div>

                        </ItemTemplate>

                    </asp:TemplateField>


                    <asp:BoundField
                        DataField="Mobile"
                        HeaderText="Phone" />


                    <asp:BoundField
                        DataField="Email"
                        HeaderText="Email" />


                    <asp:BoundField
                        DataField="VehicleNumber"
                        HeaderText="Vehicle" />


                    <asp:TemplateField HeaderText="Status">

                        <ItemTemplate>

                            <asp:Label
                                ID="lblStatus"
                                runat="server"
                                Text='<%# Eval("Status") %>'
                                CssClass='<%# GetStatusClass(Eval("Status").ToString()) %>'>
                            </asp:Label>

                        </ItemTemplate>

                    </asp:TemplateField>


                    <asp:BoundField
                        DataField="CreatedDate"
                        HeaderText="Registered Date"
                        DataFormatString="{0:dd-MM-yyyy HH:mm}" />


                    <asp:TemplateField HeaderText="Actions">

                        <ItemTemplate>

                            <asp:LinkButton
                                ID="btnEdit"
                                runat="server"
                                CommandName="EditDelivery"
                                CommandArgument='<%# Eval("DeliveryId") %>'
                                CssClass="btn btn-sm btn-outline-warning me-1"
                                CausesValidation="false">

                                <i class="fas fa-edit"></i>
                                Edit

                            </asp:LinkButton>


                            <asp:LinkButton
                                ID="btnDelete"
                                runat="server"
                                CommandName="DeleteDelivery"
                                CommandArgument='<%# Eval("DeliveryId") %>'
                                CssClass="btn btn-sm btn-outline-danger"
                                CausesValidation="false"
                                OnClientClick="return confirm('Are you sure you want to delete this delivery partner?');">

                                <i class="fas fa-trash"></i>
                                Delete

                            </asp:LinkButton>

                        </ItemTemplate>

                    </asp:TemplateField>

                </Columns>

            </asp:GridView>

        </div>

    </div>

</asp:Content>