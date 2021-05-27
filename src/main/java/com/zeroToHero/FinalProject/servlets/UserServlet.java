package com.zeroToHero.FinalProject.servlets;

import com.zeroToHero.FinalProject.models.beans.Bookings;
import com.zeroToHero.FinalProject.models.beans.Users;
import com.zeroToHero.FinalProject.models.dao.BookingsDAO;
import com.zeroToHero.FinalProject.models.dao.UsersDAO;
import com.zeroToHero.FinalProject.utilities.Auth;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "UserServlet", value = "/me")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users temp = (Users) request.getAttribute("user");
        Users dbUser = new UsersDAO().getUserById(temp.getUserId());
        ArrayList<Bookings> bookings = new BookingsDAO().getBookingsByUserId(temp.getUserId());

        request.setAttribute("dbUser", dbUser);
        request.setAttribute("bookings", bookings);

        request.getRequestDispatcher("/WEB-INF/views/user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users user = new Users();
        user.setUserId(request.getParameter("userId"));
        user.setEmail(request.getParameter("email"));
        user.setFirstName(request.getParameter("firstName"));
        user.setLastName(request.getParameter("lastName"));
        user.setPassword(Auth.encryptPassword(request.getParameter("password")));

        UsersDAO usersDAO = new UsersDAO();
        int result = usersDAO.updateMyUser(user);
        if (result != -1)
        {
            response.sendRedirect("me");
        }
        else
        {
            request.setAttribute("result", -1);
            request.getRequestDispatcher("/WEB-INF/views/user.jsp").forward(request, response);
        }
    }
}
