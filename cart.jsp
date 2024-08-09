<%-- 
    Document   : cart
    Created on : 07 Aug 2024, 7:43:55 PM
    Author     : itumeleng
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Shopping Cart - Urban Elegance</title>
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
        <!-- Shopping Cart Section -->
        <section class="cart">
            <h2>Shopping Cart</h2>
            <c:choose>
                <c:when test="${not empty sessionScope.cart}">
                    <table class="cart-table">
                        <thead>
                            <tr>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th>Price</th>
                                <th>Total</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="entry" items="${sessionScope.cart}">
                                <tr>
                                    <td>Product ${entry.key}</td>
                                    <td>
                                        <input type="number" name="quantity" value="${entry.value}" min="1" readonly />
                                    </td>
                                    <td>R19.99</td>
                                    <td>R<c:out value="${entry.value * 19.99}" /></td>
                                    <td><a href="RemoveFromCartServlet?productId=${entry.key}" class="btn btn-danger">Remove</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <div class="cart-summary">
                        <c:set var="total" value="0" />
                        <c:forEach var="entry" items="${sessionScope.cart}">
                            <c:set var="total" value="${total + (entry.value * 19.99)}" />
                        </c:forEach>
                        <h3>Total: R<c:out value="${total}" /></h3>
                        <a href="checkout.jsp" class="btn btn-primary">Checkout</a>
                    </div>
                </c:when>
                <c:otherwise>
                    <p>Your cart is empty. <a href="catalog.jsp">Continue shopping</a>.</p>
                </c:otherwise>
            </c:choose>
        </section>
        <div class="back-to-shop">
            <a href="catalog.jsp" class="btn btn-secondary">Back to Shop</a>
        </div>
    </main>
    <footer>
        <p>&copy; 2024 Urban Elegance</p>
    </footer>
</body>
</html>

