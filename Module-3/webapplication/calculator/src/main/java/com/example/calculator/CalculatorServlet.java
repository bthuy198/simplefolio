package com.example.calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", value = "/calculate")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float firstNum = Float.parseFloat(request.getParameter("firstNum"));
        float secondNum = Float.parseFloat(request.getParameter("secondNum"));
        String operator = request.getParameter("operator");

        float result = 0;
        String symbol = "";

        switch (operator) {
            case "plus":
                symbol = " + ";
                result = firstNum + secondNum;
                break;
            case "minus":
                symbol = " - ";
                result = firstNum - secondNum;
                break;
            case "multi":
                symbol = " * ";
                result = firstNum * secondNum;
                break;
            case "divide":
                symbol = " / ";
                if (secondNum != 0) {
                    result = firstNum / secondNum;
                } else{
                    throw new RuntimeException("Can't divide by zero");
                }
                break;
            default:
                throw new RuntimeException("Invalid operator");
        }
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Result</h1>");
        writer.println("<h3>" + firstNum + symbol + secondNum + " = " + result + "</h3>");
        writer.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
