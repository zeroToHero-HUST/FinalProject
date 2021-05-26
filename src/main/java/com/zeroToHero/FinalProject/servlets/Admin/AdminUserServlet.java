package com.zeroToHero.FinalProject.servlets.Admin;

import com.zeroToHero.FinalProject.models.beans.Users;
import com.zeroToHero.FinalProject.models.dao.UsersDAO;
import com.zeroToHero.FinalProject.utilities.GetListPages;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "AdminUserServlet", value = "/admin/user")
public class AdminUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int currentPage;
        try {
            currentPage = Integer.parseInt(request.getParameter("page"));
        }
        catch (NumberFormatException e)
        {
            currentPage = 1;
        }

        int countUsers = new UsersDAO().count();
        int nOfPages = countUsers / 10;

        if (nOfPages % 10 > 0) {

            nOfPages++;
        }

        ArrayList<Users> usersList = new UsersDAO().getUsersByPage(currentPage);
        int[] listPages = GetListPages.run(currentPage, nOfPages);

        request.setAttribute("usersList", usersList);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("nOfPages", nOfPages);
        request.setAttribute("firstPage", listPages[0]);
        request.setAttribute("lastPage", listPages[1]);

        request.getRequestDispatcher("/WEB-INF/views/admin/user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users user = new Users();
        user.setUserId(request.getParameter("userId"));
        user.setEmail(request.getParameter("email"));
        user.setFirstName(request.getParameter("firstName"));
        user.setLastName(request.getParameter("lastName"));
        user.setRole(request.getParameter("role"));
        user.setPassword(request.getParameter("password"));
        user.setCountryId(1);

        UsersDAO usersDAO = new UsersDAO();
        if (user.getUserId().equals(""))
        {
            try {
                if (usersDAO.checkAvailableEmail(user.getEmail()))
                {
                    request.setAttribute("result", -1);
                    request.getRequestDispatcher("/WEB-INF/views/admin/user.jsp").forward(request, response);
                }
                else
                {
                    usersDAO.signUp(user);
                    response.sendRedirect("user");
                }
            }
            catch (SQLException throwable) {
                throwable.printStackTrace();
            }
        }
        else
        {
            int result = usersDAO.updateUser(user);
            if (result != -1)
            {
                response.sendRedirect("user");
            }
            else
            {
                request.setAttribute("result", -1);
                request.getRequestDispatcher("/WEB-INF/views/admin/user.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
