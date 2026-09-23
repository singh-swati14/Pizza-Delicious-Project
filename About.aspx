<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Pizza_Website.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="bg-dark text-white text-center py-5 mb-5">
        <div class="container">
            <h1 class="display-4 fw-bold text-warning">About Pizza Palace</h1>
            <p class="lead mb-0 text-light opacity-75">Crafting Authentic Pizzas with Love & Freshness Since 2015</p>
        </div>
    </div>

    <div class="container pb-5">
        <div class="row align-items-center mb-5">
            <div class="col-md-6">
                <h2 class="fw-bold mb-3">Our Passion for Perfect Pizzas</h2>
                <p class="text-muted fs-5">At Pizza Palace, we believe every slice should be a delight. Our secret lies in hand-kneaded dough made fresh every morning, 100% real Italian mozzarella, and our rich signature tomato sauce made from ripe sun-kissed tomatoes.</p>
                <p class="text-muted">Whether you crave a classic Margherita or an exotic BBQ Chicken Feast, our master chefs bake each pizza in traditional wood-fired ovens at 450°C for maximum flavor and crunch.</p>
            </div>
            <div class="col-md-6">
                <img src="Images/hero-pizza.jpg" class="img-fluid rounded-4 shadow-lg" alt="About Pizza Palace">
            </div>
        </div>

        <div class="row g-4 text-center">
            <div class="col-md-4">
                <div class="card border-0 shadow-sm p-4 h-100">
                    <h3 class="fw-bold text-danger">50,000+</h3>
                    <p class="text-muted mb-0">Happy Customers Served</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card border-0 shadow-sm p-4 h-100">
                    <h3 class="fw-bold text-danger">30 Mins</h3>
                    <p class="text-muted mb-0">Average Hot Delivery Guarantee</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card border-0 shadow-sm p-4 h-100">
                    <h3 class="fw-bold text-danger">100% Real</h3>
                    <p class="text-muted mb-0">Mozzarella & Organic Ingredients</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
