package com.example.simplelogin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();
        writer.println(
                "<!DOCTYPE HTML>\n" +
                "<html>\n" +
                "<style type=\"text/css\">\n" +
                "    .login {\n" +
                "        height:180px; width:230px;\n" +
                "        margin:0;\n" +
                "        padding:10px;\n" +
                "        border:1px #CCC solid;\n" +
                "    }\n" +
                "    .login input {\n" +
                "        padding:5px; margin:5px\n" +
                "    }\n" +
                "</style>\n" +
                "<body>\n" +
                "<form action=\"/login\" method=\"post\">\n" +
                "    <div class=\"login\">\n" +
                "        <h2>Login</h2>\n" +
                "        <input type=\"text\" name=\"username\" size=\"30\"  placeholder=\"username\" />\n" +
                "        <input type=\"password\" name=\"password\" size=\"30\" placeholder=\"password\" />\n" +
                "        <input type=\"submit\" value=\"Sign in\"/>\n" +
                "    </div>\n" +
                "</form>\n" +
                "</body>\n" +
                "</html>\n");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        PrintWriter writer = response.getWriter();
        writer.println("<html>");

        if ("admin".equals(username) && "admin".equals(password)) {
            writer.println("<h1>Welcome " + username + " to website</h1>");
        } else {
            writer.println("<h1>Login Error</h1>");
        }

        writer.println("</html>");
    }
}
