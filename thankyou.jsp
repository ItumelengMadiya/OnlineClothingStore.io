<%-- 
    Document   : thankyou
    Created on : 08 Aug 2024, 6:24:18 AM
    Author     : itumeleng
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Thank You - Urban Elegance</title>
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
        <section class="thank-you">
            <p>Thank you, <strong>${sessionScope.name}</strong>, for your order!</p>
            <p>Your order will be shipped to:</p>
            <p><strong>${sessionScope.address}</strong></p>
            <p>An email confirmation has been sent to: <strong>${sessionScope.email}</strong></p>
            <p>Total Amount: <strong>R<c:out value="${sessionScope.total}" /></strong></p>
            <p>Payment Method: <strong>${sessionScope.paymentMethod}</strong></p>
            <a href="catalog.jsp" class="btn">Continue Shopping</a>
        </section>
    </main>
    <footer>
        <p>&copy; 2024 Urban Elegance</p>
    </footer>
</body>
</html>



