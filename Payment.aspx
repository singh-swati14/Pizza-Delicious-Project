<%@ Page Title="Payment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Pizza_Website.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="card border-0 shadow-lg rounded-4 overflow-hidden">
                    <div class="bg-dark text-white p-4 d-flex justify-content-between align-items-center">
                        <div>
                            <h4 class="fw-bold mb-0">Select Payment Method</h4>
                            <small class="text-secondary">Amount Payable: <strong class="text-warning">1,131.48</strong></small>
                        </div>
                        <span class="badge bg-success px-3 py-2 fs-6"><i class="fas fa-shield-alt me-1"></i>100% Secure SSL</span>
                    </div>

                    <div class="card-body p-4 p-md-5">
                        <!-- Radio Options -->
                        <div class="mb-4">
                            <!-- Option 1: Credit / Debit Card -->
                            <div class="form-check custom-option-card mb-3 p-3 border rounded-3 bg-light">
                                <input class="form-check-input mt-1" type="radio" name="paymentMethod" id="payCard" value="card" checked>
                                <label class="form-check-label w-100 ms-2" for="payCard">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span class="fw-bold fs-5"><i class="far fa-credit-card text-danger me-2"></i>Credit / Debit Card</span>
                                        <div>
                                            <i class="fab fa-cc-visa fa-2x text-primary me-1"></i>
                                            <i class="fab fa-cc-mastercard fa-2x text-warning me-1"></i>
                                            <i class="fab fa-cc-amex fa-2x text-info"></i>
                                        </div>
                                    </div>
                                </label>
                            </div>

                            <!-- Option 2: UPI / QR Code -->
                            <div class="form-check custom-option-card mb-3 p-3 border rounded-3 bg-light">
                                <input class="form-check-input mt-1" type="radio" name="paymentMethod" id="payUPI" value="upi">
                                <label class="form-check-label w-100 ms-2" for="payUPI">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span class="fw-bold fs-5"><i class="fas fa-mobile-alt text-success me-2"></i>UPI / Google Pay / PhonePe / Paytm</span>
                                        <span class="badge bg-success">Instant</span>
                                    </div>
                                </label>
                            </div>

                            <!-- Option 3: Net Banking -->
                            <div class="form-check custom-option-card mb-3 p-3 border rounded-3 bg-light">
                                <input class="form-check-input mt-1" type="radio" name="paymentMethod" id="payNet" value="netbanking">
                                <label class="form-check-label w-100 ms-2" for="payNet">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span class="fw-bold fs-5"><i class="fas fa-university text-primary me-2"></i>Net Banking</span>
                                        <small class="text-muted">All Indian Banks</small>
                                    </div>
                                </label>
                            </div>

                            <!-- Option 4: Cash on Delivery -->
                            <div class="form-check custom-option-card mb-3 p-3 border rounded-3 bg-light">
                                <input class="form-check-input mt-1" type="radio" name="paymentMethod" id="payCOD" value="cod">
                                <label class="form-check-label w-100 ms-2" for="payCOD">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span class="fw-bold fs-5"><i class="fas fa-money-bill-wave text-warning me-2"></i>Cash on Delivery (COD)</span>
                                        <small class="text-muted">Pay cash upon pizza arrival</small>
                                    </div>
                                </label>
                            </div>
                        </div>

                        <!-- Card Input Form Container -->
                        <div id="cardDetailsForm" class="border p-4 rounded-3 bg-white mb-4 shadow-sm">
                            <h6 class="fw-bold mb-3 border-bottom pb-2">Enter Card Information</h6>
                            <div class="row g-3">
                                <div class="col-12">
                                    <label class="form-label small font-weight-bold">Card Number</label>
                                    <input type="text" class="form-control" placeholder="4111 2222 3333 4444" value="4532 8921 0041 9812">
                                </div>
                                <div class="col-12">
                                    <label class="form-label small font-weight-bold">Card Holder Name</label>
                                    <input type="text" class="form-control" placeholder="Name as printed on card" value="John Doe">
                                </div>
                                <div class="col-6">
                                    <label class="form-label small font-weight-bold">Expiry Date</label>
                                    <input type="text" class="form-control" placeholder="MM/YY" value="08/28">
                                </div>
                                <div class="col-6">
                                    <label class="form-label small font-weight-bold">CVV Code</label>
                                    <input type="password" class="form-control" placeholder="123" value="789">
                                </div>
                            </div>
                        </div>

                        <!-- Action Buttons -->
                        <div class="d-flex justify-content-between align-items-center mt-4">
                            <a href="Checkout.aspx" class="btn btn-outline-secondary">
                                <i class="fas fa-arrow-left me-2"></i>Back to Checkout
                            </a>
                            <a href="OrderSuccess.aspx" class="btn btn-pizza btn-lg px-5 py-2 fs-5">
                                <i class="fas fa-lock me-2"></i>Pay Now (₹1,131.48)
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
