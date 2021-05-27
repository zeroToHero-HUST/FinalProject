package com.zeroToHero.FinalProject.servlets.Admin;

import com.zeroToHero.FinalProject.models.beans.Bookings;
import com.zeroToHero.FinalProject.models.dao.BookingsDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "AdminBookingServlet", value = "/admin/booking")
public class AdminBookingServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Bookings> allBookings = new BookingsDAO().getAllBookings();
        request.setAttribute("allBookings", allBookings);
        request.getRequestDispatcher("/WEB-INF/views/admin/booking.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
