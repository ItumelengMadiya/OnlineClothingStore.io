/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package store.com;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/RemoveFromCartServlet")
public class removeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        HttpSession session = request.getSession();

        HashMap<Integer, Integer> cart = (HashMap<Integer, Integer>) session.getAttribute("cart");
        if (cart != null) {
            cart.remove(productId);
        }

        session.setAttribute("cart", cart);
        response.sendRedirect("cart.jsp");
    }
}
