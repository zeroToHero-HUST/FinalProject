package com.zeroToHero.FinalProject.servlets;

import com.zeroToHero.FinalProject.controllers.HomeController;
import com.zeroToHero.FinalProject.models.Tours;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "HomeServlet", value = "")
public class HomeServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Tours> temp = null;
        try {
            temp = (ArrayList<Tours>) new HomeController().getPopularDestinations();
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
        req.setAttribute("result", temp);
        req.getRequestDispatcher("/WEB-INF/views/home.jsp").forward(req, resp);
    }
}
