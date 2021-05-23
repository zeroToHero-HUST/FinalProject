package com.zeroToHero.FinalProject.servlets;

import com.zeroToHero.FinalProject.models.beans.Tours;
import com.zeroToHero.FinalProject.models.dao.ToursDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "HomeServlet", value = "")
public class HomeServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
<<<<<<< HEAD
        ArrayList<Tours> temp = null;
        String error = "1";
        try {
            temp = (ArrayList<Tours>) new HomeController().getPopularDestinations();
        } catch (SQLException throwable) {
            error = throwable.getMessage();
            throwable.printStackTrace();
        }
        req.setAttribute("error",error);
        req.setAttribute("result", temp);
=======
        ArrayList<Tours> popTours = new ToursDAO().getPopularTours();

        req.setAttribute("popTours", popTours);
>>>>>>> ab5c521107a01b3f7735ee8b561266e3e89ed0cc
        req.getRequestDispatcher("/WEB-INF/views/home.jsp").forward(req, resp);
    }
}
