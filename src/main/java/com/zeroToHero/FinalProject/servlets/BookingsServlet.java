package com.zeroToHero.FinalProject.servlets;

import com.zeroToHero.FinalProject.models.beans.Bookings;
import com.zeroToHero.FinalProject.models.dao.BookingsDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@WebServlet(name = "BookingsServlet", value = "/booking")
public class BookingsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect(request.getContextPath() + "/");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Bookings newBooking = new Bookings();
        newBooking.setUserId(request.getParameter("userId"));
        newBooking.setTourId(Long.parseLong(request.getParameter("tourId")));
        newBooking.setPrice(request.getParameter("price"));
        try {
            newBooking.setStartDate(new java.sql.Date(new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("checkInDate")).getTime()));
            newBooking.setEndDate(new java.sql.Date(new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("checkOutDate")).getTime()));
        } catch (ParseException e) {
            e.printStackTrace();
        }

        new BookingsDAO().bookings(newBooking);
        response.sendRedirect(request.getContextPath() + "/me");
    }
}
