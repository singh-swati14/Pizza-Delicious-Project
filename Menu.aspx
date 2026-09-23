<%@ Page Title="Menu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Pizza_Website.Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Header Banner -->
    <div class="bg-dark text-white text-center py-5 mb-4">
        <div class="container">
            <h1 class="display-4 fw-bold text-warning">Explore Our Menu</h1>
            <p class="lead mb-0 text-light opacity-75">Handcrafted with passion, baked to perfection in authentic wood-fired ovens.</p>
        </div>
    </div>

    <div class="container pb-5">
        <!-- Category Navigation Filters -->
        <div class="d-flex justify-content-center mb-5 flex-wrap gap-2 category-pills">
            <a href="#" class="nav-link active">All Pizzas</a>
            <a href="#" class="nav-link">Veg Pizza</a>
            <a href="#" class="nav-link">Cheese Pizza</a>
            <a href="#" class="nav-link">Spicy Pizza</a>
            <a href="#" class="nav-link">Special Pizza</a>
            <a href="#" class="nav-link">Combo Meals</a>
        </div>

        <!-- Pizza Grid (12 Items) -->
        <div class="row g-4">
            <!-- Pizza 1 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="card pizza-card h-100">
                    <img src="Images/pizza1.jpg" class="card-img-top" alt="Margherita Supreme">
                    <div class="card-body d-flex flex-column">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <span class="badge bg-success">Veg</span>
                            <div class="text-warning small"><i class="fas fa-star"></i> 4.8</div>
                        </div>
                        <h5 class="card-title fw-bold">Margherita Supreme</h5>
                        <p class="card-text text-muted small flex-grow-1">Mozzarella cheese, fresh basil leaves, and herb glaze.</p>
                        <div class="mb-2">
                            <small class="text-muted">Size: </small>
                            <select class="form-select form-select-sm d-inline-block w-auto">
                                <option>Regular (8")</option>
                                <option selected>Medium (10")</option>
                                <option>Large (12")</option>
                            </select>
                        </div>
                        <div class="d-flex justify-content-between align-items-center mt-3">
                            <span class="price-tag">₹299</span>
                            <a href="Cart.aspx" class="btn btn-pizza-outline btn-sm"><i class="fas fa-shopping-cart me-1"></i>Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pizza 2 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="card pizza-card h-100">
                    <img src="Images/pizza2.jpg" class="card-img-top" alt="Pepperoni Feast">
                    <div class="card-body d-flex flex-column">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <span class="badge bg-danger">Non-Veg</span>
                            <div class="text-warning small"><i class="fas fa-star"></i> 4.9</div>
                        </div>
                        <h5 class="card-title fw-bold">Pepperoni Feast</h5>
                        <p class="card-text text-muted small flex-grow-1">Loaded with double pepperoni slices and extra mozzarella.</p>
                        <div class="mb-2">
                            <small class="text-muted">Size: </small>
                            <select class="form-select form-select-sm d-inline-block w-auto">
                                <option>Regular (8")</option>
                                <option selected>Medium (10")</option>
                                <option>Large (12")</option>
                            </select>
                        </div>
                        <div class="d-flex justify-content-between align-items-center mt-3">
                            <span class="price-tag">449</span>
                            <a href="Cart.aspx" class="btn btn-pizza-outline btn-sm"><i class="fas fa-shopping-cart me-1"></i>Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pizza 3 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="card pizza-card h-100">
                    <img src="Images/pizza3.jpg" class="card-img-top" alt="BBQ Chicken Special">
                    <div class="card-body d-flex flex-column">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <span class="badge bg-danger">Non-Veg</span>
                            <div class="text-warning small"><i class="fas fa-star"></i> 4.7</div>
                        </div>
                        <h5 class="card-title fw-bold">BBQ Chicken Special</h5>
                        <p class="card-text text-muted small flex-grow-1">Smokey grilled chicken chunks, onion, and signature BBQ sauce.</p>
                        <div class="mb-2">
                            <small class="text-muted">Size: </small>
                            <select class="form-select form-select-sm d-inline-block w-auto">
                                <option>Regular (8")</option>
                                <option selected>Medium (10")</option>
                                <option>Large (12")</option>
                            </select>
                        </div>
                        <div class="d-flex justify-content-between align-items-center mt-3">
                            <span class="price-tag">499</span>
                            <a href="Cart.aspx" class="btn btn-pizza-outline btn-sm"><i class="fas fa-shopping-cart me-1"></i>Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pizza 4 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="card pizza-card h-100">
                    <img src="Images/pizza4.jpg" class="card-img-top" alt="Veggie Delight">
                    <div class="card-body d-flex flex-column">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <span class="badge bg-success">Veg</span>
                            <div class="text-warning small"><i class="fas fa-star"></i> 4.6</div>
                        </div>
                        <h5 class="card-title fw-bold">Veggie Delight</h5>
                        <p class="card-text text-muted small flex-grow-1">Capsicum, ripe tomatoes, sweet corn, and red paprika toppings.</p>
                        <div class="mb-2">
                            <small class="text-muted">Size: </small>
                            <select class="form-select form-select-sm d-inline-block w-auto">
                                <option>Regular (8")</option>
                                <option selected>Medium (10")</option>
                                <option>Large (12")</option>
                            </select>
                        </div>
                        <div class="d-flex justify-content-between align-items-center mt-3">
                            <span class="price-tag">379</span>
                            <a href="Cart.aspx" class="btn btn-pizza-outline btn-sm"><i class="fas fa-shopping-cart me-1"></i>Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pizza 5 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="card pizza-card h-100">
                    <img src="Images/pizza5.jpg" class="card-img-top" alt="Four Cheese Burst">
                    <div class="card-body d-flex flex-column">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <span class="badge bg-warning text-dark">Cheese Special</span>
                            <div class="text-warning small"><i class="fas fa-star"></i> 4.9</div>
                        </div>
                        <h5 class="card-title fw-bold">Four Cheese Burst</h5>
                        <p class="card-text text-muted small flex-grow-1">Mozzarella, Cheddar, Gouda, and Parmesan liquid cheese burst crust.</p>
                        <div class="mb-2">
                            <small class="text-muted">Size: </small>
                            <select class="form-select form-select-sm d-inline-block w-auto">
                                <option>Regular (8")</option>
                                <option selected>Medium (10")</option>
                                <option>Large (12")</option>
                            </select>
                        </div>
                        <div class="d-flex justify-content-between align-items-center mt-3">
                            <span class="price-tag">549</span>
                            <a href="Cart.aspx" class="btn btn-pizza-outline btn-sm"><i class="fas fa-shopping-cart me-1"></i>Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pizza 6 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="card pizza-card h-100">
                    <img src="Images/pizza6.jpg" class="card-img-top" alt="Spicy Paneer Tikka">
                    <div class="card-body d-flex flex-column">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <span class="badge bg-danger">Spicy Veg</span>
                            <div class="text-warning small"><i class="fas fa-star"></i> 4.8</div>
                        </div>
                        <h5 class="card-title fw-bold">Spicy Paneer Tikka</h5>
                        <p class="card-text text-muted small flex-grow-1">Marinated paneer cubes, red jalapeños, onion, and spicy tikka gravy.</p>
                        <div class="mb-2">
                            <small class="text-muted">Size: </small>
                            <select class="form-select form-select-sm d-inline-block w-auto">
                                <option>Regular (8")</option>
                                <option selected>Medium (10")</option>
                                <option>Large (12")</option>
                            </select>
                        </div>
                        <div class="d-flex justify-content-between align-items-center mt-3">
                            <span class="price-tag">429</span>
                            <a href="Cart.aspx" class="btn btn-pizza-outline btn-sm"><i class="fas fa-shopping-cart me-1"></i>Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pizza 7 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="card pizza-card h-100">
                    <img src="Images/pizza7.jpg" class="card-img-top" alt="Mexican Wave">
                    <div class="card-body d-flex flex-column">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <span class="badge bg-warning text-dark">Special</span>
                            <div class="text-warning small"><i class="fas fa-star"></i> 4.7</div>
                        </div>
                        <h5 class="card-title fw-bold">Mexican Wave</h5>
                        <p class="card-text text-muted small flex-grow-1">Mexican herbs, black olives, sweet corn, jalapeños, and salsa spread.</p>
                        <div class="mb-2">
                            <small class="text-muted">Size: </small>
                            <select class="form-select form-select-sm d-inline-block w-auto">
                                <option>Regular (8")</option>
                                <option selected>Medium (10")</option>
                                <option>Large (12")</option>
                            </select>
                        </div>
                        <div class="d-flex justify-content-between align-items-center mt-3">
                            <span class="price-tag">399</span>
                            <a href="Cart.aspx" class="btn btn-pizza-outline btn-sm"><i class="fas fa-shopping-cart me-1"></i>Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pizza 8 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="card pizza-card h-100">
                    <img src="Images/pizza8.jpg" class="card-img-top" alt="Triple Cheese Supreme">
                    <div class="card-body d-flex flex-column">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <span class="badge bg-success">Veg</span>
                            <div class="text-warning small"><i class="fas fa-star"></i> 4.8</div>
                        </div>
                        <h5 class="card-title fw-bold">Triple Cheese Supreme</h5>
                        <p class="card-text text-muted small flex-grow-1">Layered cheddar cheese, soft cottage cheese, and mozzarella overload.</p>
                        <div class="mb-2">
                            <small class="text-muted">Size: </small>
                            <select class="form-select form-select-sm d-inline-block w-auto">
                                <option>Regular (8")</option>
                                <option selected>Medium (10")</option>
                                <option>Large (12")</option>
                            </select>
                        </div>
                        <div class="d-flex justify-content-between align-items-center mt-3">
                            <span class="price-tag">479</span>
                            <a href="Cart.aspx" class="btn btn-pizza-outline btn-sm"><i class="fas fa-shopping-cart me-1"></i>Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pizza 9 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="card pizza-card h-100">
                    <img src="Images/pizza9.jpg" class="card-img-top" alt="Farmhouse Fresh">
                    <div class="card-body d-flex flex-column">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <span class="badge bg-success">Veg</span>
                            <div class="text-warning small"><i class="fas fa-star"></i> 4.7</div>
                        </div>
                        <h5 class="card-title fw-bold">Farmhouse Fresh</h5>
                        <p class="card-text text-muted small flex-grow-1">Delightful combination of onion, capsicum, tomato, and grilled mushroom.</p>
                        <div class="mb-2">
                            <small class="text-muted">Size: </small>
                            <select class="form-select form-select-sm d-inline-block w-auto">
                                <option>Regular (8")</option>
                                <option selected>Medium (10")</option>
                                <option>Large (12")</option>
                            </select>
                        </div>
                        <div class="d-flex justify-content-between align-items-center mt-3">
                            <span class="price-tag">389</span>
                            <a href="Cart.aspx" class="btn btn-pizza-outline btn-sm"><i class="fas fa-shopping-cart me-1"></i>Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pizza 10 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="card pizza-card h-100">
                    <img src="Images/pizza10.jpg" class="card-img-top" alt="Mushroom Delight">
                    <div class="card-body d-flex flex-column">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <span class="badge bg-success">Veg</span>
                            <div class="text-warning small"><i class="fas fa-star"></i> 4.5</div>
                        </div>
                        <h5 class="card-title fw-bold">Mushroom Delight</h5>
                        <p class="card-text text-muted small flex-grow-1">Wild button mushrooms, caramelized onions, oregano, and garlic sauce.</p>
                        <div class="mb-2">
                            <small class="text-muted">Size: </small>
                            <select class="form-select form-select-sm d-inline-block w-auto">
                                <option>Regular (8")</option>
                                <option selected>Medium (10")</option>
                                <option>Large (12")</option>
                            </select>
                        </div>
                        <div class="d-flex justify-content-between align-items-center mt-3">
                            <span class="price-tag">369</span>
                            <a href="Cart.aspx" class="btn btn-pizza-outline btn-sm"><i class="fas fa-shopping-cart me-1"></i>Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pizza 11 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="card pizza-card h-100">
                    <img src="Images/pizza11.jpg" class="card-img-top" alt="Chicken Golden Delight">
                    <div class="card-body d-flex flex-column">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <span class="badge bg-danger">Non-Veg</span>
                            <div class="text-warning small"><i class="fas fa-star"></i> 4.9</div>
                        </div>
                        <h5 class="card-title fw-bold">Chicken Golden Delight</h5>
                        <p class="card-text text-muted small flex-grow-1">Double golden corn, spicy chicken sausage, and double melted cheese.</p>
                        <div class="mb-2">
                            <small class="text-muted">Size: </small>
                            <select class="form-select form-select-sm d-inline-block w-auto">
                                <option>Regular (8")</option>
                                <option selected>Medium (10")</option>
                                <option>Large (12")</option>
                            </select>
                        </div>
                        <div class="d-flex justify-content-between align-items-center mt-3">
                            <span class="price-tag">519</span>
                            <a href="Cart.aspx" class="btn btn-pizza-outline btn-sm"><i class="fas fa-shopping-cart me-1"></i>Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pizza 12 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="card pizza-card h-100">
                    <img src="Images/pizza12.jpg" class="card-img-top" alt="Ultimate Family Combo">
                    <div class="card-body d-flex flex-column">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <span class="badge bg-primary">Combo</span>
                            <div class="text-warning small"><i class="fas fa-star"></i> 5.0</div>
                        </div>
                        <h5 class="card-title fw-bold">Ultimate Family Combo</h5>
                        <p class="card-text text-muted small flex-grow-1">2 Medium Pizzas + Garlic Breadsticks + 1.25L Pepsi Bottle.</p>
                        <div class="mb-2">
                            <small class="text-muted">Size: </small>
                            <select class="form-select form-select-sm d-inline-block w-auto">
                                <option selected>Family Pack</option>
                            </select>
                        </div>
                        <div class="d-flex justify-content-between align-items-center mt-3">
                            <span class="price-tag">899</span>
                            <a href="Cart.aspx" class="btn btn-pizza-outline btn-sm"><i class="fas fa-shopping-cart me-1"></i>Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
