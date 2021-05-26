package com.zeroToHero.FinalProject.servlets.Admin;

import com.zeroToHero.FinalProject.models.dao.UsersDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "AdminUserDeleteServlet", value = "/admin/user/delete")
public class AdminUserDeleteServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        new UsersDAO().deleteUser(request.getParameter("userId"), request.getParameter("email"));
        response.sendRedirect(request.getContextPath() + "/admin/user");
    }
}
