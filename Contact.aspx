<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Pizza_Website.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="bg-dark text-white text-center py-5 mb-5">
        <div class="container">
            <h1 class="display-4 fw-bold text-warning">Contact Us</h1>
            <p class="lead mb-0 text-light opacity-75">We'd love to hear from you! Have feedback or order questions?</p>
        </div>
    </div>

    <div class="container pb-5">
        <div class="row g-4">
            <div class="col-lg-6">
                <div class="card border-0 shadow-sm p-4 p-md-5 h-100">
                    <h3 class="fw-bold mb-4">Send Us a Message</h3>
                    <div class="mb-3">
                        <label class="form-label font-weight-bold">Your Name</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="John Doe"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label font-weight-bold">Your Email</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="john@example.com"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label font-weight-bold">Subject</label>
                        <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Feedback / Inquiry"></asp:TextBox>
                    </div>
                    <div class="mb-4">
                        <label class="form-label font-weight-bold">Message</label>
                        <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Type your message here..."></asp:TextBox>
                    </div>
                    <button type="button" class="btn btn-pizza py-2 fw-bold" onclick="showNotification('Message sent successfully! We will contact you shortly.', 'success');">
                        <i class="fas fa-paper-plane me-2"></i>Send Message
                    </button>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="card border-0 shadow-sm p-4 p-md-5 bg-light h-100">
                    <h3 class="fw-bold mb-4">Store Information</h3>
                    <div class="d-flex align-items-center mb-4">
                        <div class="bg-danger text-white rounded-circle p-3 me-3">
                            <i class="fas fa-map-marker-alt fs-4"></i>
                        </div>
                        <div>
                            <h6 class="fw-bold mb-0">Address</h6>
                            <p class="text-muted mb-0">123 Food Street, Pizza Town, Mumbai, MH - 400001</p>
                        </div>
                    </div>
                    <div class="d-flex align-items-center mb-4">
                        <div class="bg-danger text-white rounded-circle p-3 me-3">
                            <i class="fas fa-phone-alt fs-4"></i>
                        </div>
                        <div>
                            <h6 class="fw-bold mb-0">Phone Hotline</h6>
                            <p class="text-muted mb-0">+91 98765 43210 / +91 22 1234 5678</p>
                        </div>
                    </div>
                    <div class="d-flex align-items-center mb-4">
                        <div class="bg-danger text-white rounded-circle p-3 me-3">
                            <i class="fas fa-envelope fs-4"></i>
                        </div>
                        <div>
                            <h6 class="fw-bold mb-0">Email Support</h6>
                            <p class="text-muted mb-0">support@pizzapalace.com</p>
                        </div>
                    </div>
                    <div class="d-flex align-items-center">
                        <div class="bg-danger text-white rounded-circle p-3 me-3">
                            <i class="fas fa-clock fs-4"></i>
                        </div>
                        <div>
                            <h6 class="fw-bold mb-0">Working Hours</h6>
                            <p class="text-muted mb-0">Mon - Sun: 10:00 AM - 11:30 PM</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
