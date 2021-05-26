package com.zeroToHero.FinalProject.servlets;

import com.zeroToHero.FinalProject.models.beans.Users;
import com.zeroToHero.FinalProject.models.dao.UsersDAO;
import com.zeroToHero.FinalProject.utilities.Auth;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "UserServlet", value = "/me")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
        Users temp = (Users) request.getAttribute("user");
        user.setRole(temp.getRole());

        System.out.println(user.getUserId());
        System.out.println(user.getEmail());
        System.out.println(user.getLastName());
        System.out.println(user.getFirstName());
        System.out.println(user.getPassword());

        UsersDAO usersDAO = new UsersDAO();
        int result = usersDAO.updateUser(user);
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
