package com.zeroToHero.FinalProject.filters;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter(filterName = "LoggedInFilter")
public class LoggedInFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        boolean isLogIn = false;
        HttpServletResponse response1 = (HttpServletResponse) response;
        HttpServletRequest request1 = (HttpServletRequest) request;

        if (request.getAttribute("login") != null)
        {
            isLogIn = (boolean) request.getAttribute("login");
        }

        if (isLogIn)
        {
            response1.sendRedirect(request1.getContextPath() + "/");
        }
        else
            chain.doFilter(request, response);
    }
}
