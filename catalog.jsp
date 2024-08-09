<%-- 
    Document   : catalog
    Created on : 07 Aug 2024, 7:41:12 PM
    Author     : itumeleng
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catalog - Urban Elegance</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <header>
        <div class="header-container">
            <div class="logo">
                Urban Elegance
            </div>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="catalog.jsp">Shop</a></li>
                    <li><a href="cart.jsp">Cart</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main class="container">
        <!-- Product Catalog Section -->
        <section class="product-catalog">
            <h2>Featured Products</h2>
            <div class="product-list">
                <div class="product-item">
                    <img src="images/IMG_1435.jpg" alt="Product 1">
                    <h3>Product 1</h3>
                    <p>Price: R299.99</p>
                    <a href="AddToCartServlet?productId=1" class="btn">Add to Cart</a>
                </div>
                <div class="product-item">
                    <img src="images/IMG_8350.jpg" alt="Product 2">
                    <h3>Product 2</h3>
                    <p>Price: R449.99</p>
                    <a href="AddToCartServlet?productId=2" class="btn">Add to Cart</a>
                </div>
                <div class="product-item">
                    <img src="images/IMG_8611-1.jpg" alt="Product 3">
                    <h3>Product 3</h3>
                    <p>Price: R599.99</p>
                    <a href="AddToCartServlet?productId=3" class="btn">Add to Cart</a>
                </div>
                <div class="product-item">
                    <img src="images/IMG_3.jpg" alt="Product 4">
                    <h3>Product 4</h3>
                    <p>Price: R749.99</p>
                    <a href="AddToCartServlet?productId=4" class="btn">Add to Cart</a>
                </div>
                <div class="product-item">
                    <img src="images/IMG_4.jpg" alt="Product 5">
                    <h3>Product 5</h3>
                    <p>Price: R899.99</p>
                    <a href="AddToCartServlet?productId=5" class="btn">Add to Cart</a>
                </div>
                <div class="product-item">
                    <img src="images/IMG_5.jpg" alt="Product 6">
                    <h3>Product 6</h3>
                    <p>Price: R1,049.99</p>
                    <a href="AddToCartServlet?productId=6" class="btn">Add to Cart</a>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="footer-container">
            <p>&copy; 2024 Urban Elegance</p>
        </div>
    </footer>
</body>
</html>



