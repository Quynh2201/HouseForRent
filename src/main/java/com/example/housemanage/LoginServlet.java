package com.example.housemanage;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "login", value = "/login")
public class LoginServlet  extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
    }
}
