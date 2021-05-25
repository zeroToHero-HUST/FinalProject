package com.zeroToHero.FinalProject.filters;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter(filterName = "LoggedInFilter", urlPatterns = {"/log-in", "/sign-up"})
public class LoggedInFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        boolean isLogIn = false;
        HttpServletResponse response1 = (HttpServletResponse) response;

        if (request.getAttribute("login") != null)
        {
            isLogIn = (boolean) request.getAttribute("login");
        }

        if (isLogIn)
        {
            response1.sendRedirect("tour");
        }
        else
            chain.doFilter(request, response);
    }
}
