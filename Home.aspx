<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Pizza_Website.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Hero Section -->
    <section class="hero-banner text-center d-flex align-items-center">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-9">
                    <span class="badge bg-warning text-dark px-3 py-2 fs-6 rounded-pill mb-3 fw-bold">Hot & Fresh Out of the Oven</span>
                    <h1 class="display-3 font-weight-bold mb-3">Delicious Pizza, Delivered Fast</h1>
                    <p class="lead mb-4">Fresh ingredients. Hot pizza. Happy moments. Made with 100% hand-stretched dough and organic tomato glaze.</p>
                    <div class="d-flex justify-content-center gap-3">
                        <a href="Menu.aspx" class="btn btn-pizza btn-lg px-4 fs-5"><i class="fas fa-pizza-slice me-2"></i>Order Now</a>
                        <a href="Menu.aspx" class="btn btn-outline-light btn-lg px-4 fs-5"><i class="fas fa-book-open me-2"></i>View Menu</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Popular Pizzas Section -->
    <section class="py-5">
        <div class="container">
            <div class="text-center mb-5">
                <span class="text-danger fw-bold text-uppercase tracking-wide">Customer Favorites</span>
                <h2 class="fw-bold display-6">Our Popular Pizzas</h2>
                <p class="text-muted">Hand-picked by our master chefs for an unforgettable taste experience</p>
            </div>

            <div class="row g-4">
                <!-- Card 1 -->
                <div class="col-md-6 col-lg-3">
                    <div class="card pizza-card h-100">
                        <img src="Images/pizza1.jpg" class="card-img-top" alt="Margherita Supreme">
                        <div class="card-body d-flex flex-column">
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <span class="badge bg-success">Veg</span>
                                <div class="text-warning"><i class="fas fa-star"></i> 4.8</div>
                            </div>
                            <h5 class="card-title fw-bold">Margherita Supreme</h5>
                            <p class="card-text text-muted small flex-grow-1">Classic mozzarella cheese, fresh basil leaves, and tomato garlic glaze.</p>
                            <div class="d-flex justify-content-between align-items-center mt-3">
                                <span class="price-tag">299</span>
                                <a href="Cart.aspx" class="btn btn-pizza-outline btn-sm"><i class="fas fa-cart-plus me-1"></i>Add to Cart</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Card 2 -->
                <div class="col-md-6 col-lg-3">
                    <div class="card pizza-card h-100">
                        <img src="Images/pizza2.jpg" class="card-img-top" alt="Pepperoni Feast">
                        <div class="card-body d-flex flex-column">
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <span class="badge bg-danger">Non-Veg</span>
                                <div class="text-warning"><i class="fas fa-star"></i> 4.9</div>
                            </div>
                            <h5 class="card-title fw-bold">Pepperoni Feast</h5>
                            <p class="card-text text-muted small flex-grow-1">Double layers of crispy sliced pepperoni loaded with extra mozzarella cheese.</p>
                            <div class="d-flex justify-content-between align-items-center mt-3">
                                <span class="price-tag">449</span>
                                <a href="Cart.aspx" class="btn btn-pizza-outline btn-sm"><i class="fas fa-cart-plus me-1"></i>Add to Cart</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Card 3 -->
                <div class="col-md-6 col-lg-3">
                    <div class="card pizza-card h-100">
                        <img src="Images/pizza3.jpg" class="card-img-top" alt="BBQ Chicken Special">
                        <div class="card-body d-flex flex-column">
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <span class="badge bg-danger">Non-Veg</span>
                                <div class="text-warning"><i class="fas fa-star"></i> 4.7</div>
                            </div>
                            <h5 class="card-title fw-bold">BBQ Chicken Special</h5>
                            <p class="card-text text-muted small flex-grow-1">Smokey grilled chicken chunks marinated in rich BBQ sauce and sweet onions.</p>
                            <div class="d-flex justify-content-between align-items-center mt-3">
                                <span class="price-tag">499</span>
                                <a href="Cart.aspx" class="btn btn-pizza-outline btn-sm"><i class="fas fa-cart-plus me-1"></i>Add to Cart</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Card 4 -->
                <div class="col-md-6 col-lg-3">
                    <div class="card pizza-card h-100">
                        <img src="Images/pizza4.jpg" class="card-img-top" alt="Veggie Delight">
                        <div class="card-body d-flex flex-column">
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <span class="badge bg-success">Veg</span>
                                <div class="text-warning"><i class="fas fa-star"></i> 4.6</div>
                            </div>
                            <h5 class="card-title fw-bold">Veggie Delight</h5>
                            <p class="card-text text-muted small flex-grow-1">Loaded with crisp capsicum, juicy tomatoes, sweet corn, and red paprika.</p>
                            <div class="d-flex justify-content-between align-items-center mt-3">
                                <span class="price-tag">379</span>
                                <a href="Cart.aspx" class="btn btn-pizza-outline btn-sm"><i class="fas fa-cart-plus me-1"></i>Add to Cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="text-center mt-5">
                <a href="Menu.aspx" class="btn btn-pizza btn-lg"><i class="fas fa-utensils me-2"></i>Explore Full Menu</a>
            </div>
        </div>
    </section>

    <!-- Why Choose Us -->
    <section class="py-5 bg-light">
        <div class="container">
            <div class="text-center mb-5">
                <span class="text-danger fw-bold text-uppercase">The Pizza Palace Difference</span>
                <h2 class="fw-bold display-6">Why Choose Us?</h2>
            </div>
            <div class="row g-4 text-center">
                <div class="col-md-3">
                    <div class="card border-0 shadow-sm p-4 h-100">
                        <div class="text-danger display-4 mb-3"><i class="fas fa-leaf"></i></div>
                        <h5 class="fw-bold">Fresh Ingredients</h5>
                        <p class="text-muted small mb-0">100% farm-fresh vegetables, organic dough, and pure mozzarella cheese daily.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card border-0 shadow-sm p-4 h-100">
                        <div class="text-danger display-4 mb-3"><i class="fas fa-shipping-fast"></i></div>
                        <h5 class="fw-bold">Fast Delivery</h5>
                        <p class="text-muted small mb-0">Super-fast 30-minute hot delivery guarantee straight to your doorstep.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card border-0 shadow-sm p-4 h-100">
                        <div class="text-danger display-4 mb-3"><i class="fas fa-award"></i></div>
                        <h5 class="fw-bold">Best Quality</h5>
                        <p class="text-muted small mb-0">Award-winning pizza recipes prepared by passionate certified chefs.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card border-0 shadow-sm p-4 h-100">
                        <div class="text-danger display-4 mb-3"><i class="fas fa-shield-alt"></i></div>
                        <h5 class="fw-bold">Secure Payment</h5>
                        <p class="text-muted small mb-0">Multiple payment options with encrypted 100% safe transactions.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Special Offer Section -->
    <section class="py-5 bg-danger text-white text-center">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <h2 class="display-5 fw-bold mb-3">Get 20% OFF on your first order!</h2>
                    <p class="fs-5 mb-4 opacity-90">Use coupon code <span class="badge bg-warning text-dark px-3 py-2 fs-5">PIZZA20</span> at checkout and enjoy piping hot pizzas!</p>
                    <a href="Menu.aspx" class="btn btn-warning btn-lg px-5 fw-bold rounded-pill text-dark"><i class="fas fa-pizza-slice me-2"></i>Order Now</a>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
