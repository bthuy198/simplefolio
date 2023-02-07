package com.example.discountcalculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", value = "/display-percent")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productName = request.getParameter("productName");
        float vnd = Float.parseFloat(request.getParameter("vnd"));
        float percent = Float.parseFloat(request.getParameter("percent")) / 100;

        float amount = vnd * percent;
        float total = vnd - amount;

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Product: " + productName + "</h1>");
        writer.println("<h1>Price: " + vnd + "</h1>");
        writer.println("<h1>Discount Percent(%): " + (percent * 100) + "</h1>");
        writer.println("<hr>");
        writer.println("<h1>Discount Amount: " + amount + "</h1>");
        writer.println("<h1>Discount Price: " + total + "</h1>");
        writer.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
