package store.com;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CheckoutServlet")
public class CheckoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve user details from the form
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String paymentMethod = request.getParameter("paymentMethod");

        // Get the cart from the session
        HttpSession session = request.getSession();
        HashMap<String, Integer> cart = (HashMap<String, Integer>) session.getAttribute("cart");

        if (cart == null || cart.isEmpty()) {
            // If the cart is empty, redirect to the catalog page
            response.sendRedirect("catalog.jsp");
            return;
        }

        // Calculate the total amount
        double total = 0;
        double pricePerItem = 19.99; // Example price, replace with dynamic pricing if needed
        for (int quantity : cart.values()) {
            total += quantity * pricePerItem;
        }

        // Store the order summary in the session
        session.setAttribute("name", name);
        session.setAttribute("address", address);
        session.setAttribute("email", email);
        session.setAttribute("phone", phone);
        session.setAttribute("paymentMethod", paymentMethod);
        session.setAttribute("total", total);

        // Clear the cart after checkout
        session.removeAttribute("cart");

        // Redirect to the thank you page
        response.sendRedirect("thankyou.jsp");
    }
} 




