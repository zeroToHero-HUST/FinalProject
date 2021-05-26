package com.zeroToHero.FinalProject.servlets;

import com.zeroToHero.FinalProject.models.beans.Users;
import com.zeroToHero.FinalProject.models.dao.UsersDAO;
import com.zeroToHero.FinalProject.utilities.Auth;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "LogInServlet", value = "/log-in")
public class LogInServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users user = new UsersDAO().logIn(request.getParameter("email"), request.getParameter("password"));

        if (user != null)
        {
            Auth.setTokenCookies(response, user);
            response.sendRedirect(request.getContextPath());
        }
        else
        {
            request.setAttribute("error", true);
            request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
        }
    }
}
