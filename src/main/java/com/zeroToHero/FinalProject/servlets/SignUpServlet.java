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
import java.sql.SQLException;

@WebServlet(name = "SignUpServlet", value = "/sign-up")
public class SignUpServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/sign_up.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users newUser = new Users();
        newUser.setFirstName(request.getParameter("firstName"));
        newUser.setLastName(request.getParameter("lastName"));
        newUser.setEmail(request.getParameter("email"));
        newUser.setPassword(Auth.encryptPassword(request.getParameter("password")));
        newUser.setCountryId(1);

        UsersDAO usersDAO = new UsersDAO();
        try {
            if (usersDAO.checkAvailableEmail(newUser.getEmail()))
            {
                request.setAttribute("error", true);
                request.getRequestDispatcher("/WEB-INF/views/sign_up.jsp").forward(request, response);
            }
            else
            {
                usersDAO.signUp(newUser);
                response.sendRedirect("log-in");
            }
        }
        catch (SQLException throwable) {
            throwable.printStackTrace();
        }
    }
}
