package com.zeroToHero.FinalProject.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LogOutServlet", value = "/log-out")
public class LogOutServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie cookie1 = new Cookie("tokenHeaderPayload", "");
        Cookie cookie2 = new Cookie("tokenSignature", "");
        cookie1.setMaxAge(0);
        cookie2.setMaxAge(0);
        response.addCookie(cookie1);
        response.addCookie(cookie2);

        response.sendRedirect(request.getContextPath() + "/");
    }
}
