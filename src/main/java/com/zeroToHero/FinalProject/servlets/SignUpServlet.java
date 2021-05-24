package com.zeroToHero.FinalProject.servlets;

import com.zeroToHero.FinalProject.models.beans.Users;
import com.zeroToHero.FinalProject.models.dao.UsersDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.crypto.argon2.Argon2PasswordEncoder;

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
        int saltLength = 128 / 8; // 128 bits
        int hashLength = 256 / 8; // 256 bits
        int parallelism = 1;
        int memoryInKb = 10 * 1024; // 10 MB
        int iterations = 10;
        Argon2PasswordEncoder pwEncoder = new Argon2PasswordEncoder(saltLength, hashLength, parallelism, memoryInKb, iterations);

        Users newUser = new Users();
        newUser.setFirstName(request.getParameter("firstName"));
        newUser.setLastName(request.getParameter("lastName"));
        newUser.setEmail(request.getParameter("email"));
        newUser.setPassword(pwEncoder.encode(request.getParameter("password")));
        newUser.setCountryId(1);

        UsersDAO usersDAO = new UsersDAO();
        try {
            if (usersDAO.checkAvailableEmail(newUser.getEmail()))
            {
                request.setAttribute("emailAvailable", false);
                request.getRequestDispatcher("/WEB-INF/views/sign_up.jsp").forward(request, response);
            }
            else
            {
                usersDAO.signUpUser(newUser);
                response.sendRedirect("log-in");
            }
        }
        catch (SQLException throwable) {
            throwable.printStackTrace();
        }
    }
}
