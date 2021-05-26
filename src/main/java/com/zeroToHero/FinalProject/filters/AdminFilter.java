package com.zeroToHero.FinalProject.filters;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter(filterName = "AdminFilter", urlPatterns = "/admin/*")
public class AdminFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        boolean isAdmin = false;
        HttpServletResponse response1 = (HttpServletResponse) response;
        HttpServletRequest request1 = (HttpServletRequest) request;

        if (request.getAttribute("login") != null && request.getAttribute("admin") != null)
        {
            isAdmin = (boolean) request.getAttribute("admin");
        }

        if (!isAdmin)
        {
            response1.sendRedirect(request1.getContextPath());
        }
        else
            chain.doFilter(request, response);
    }
}
