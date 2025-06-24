package com.carwebapp.servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class CarServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("car.jsp");
        rd.forward(req, res);
    }
}
