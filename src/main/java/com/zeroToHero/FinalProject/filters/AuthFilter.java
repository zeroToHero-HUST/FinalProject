package com.zeroToHero.FinalProject.filters;

import com.zeroToHero.FinalProject.models.beans.Users;
import com.zeroToHero.FinalProject.utilities.Auth;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebFilter(filterName = "AuthFilter", urlPatterns = "/*")
public class AuthFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request1 = (HttpServletRequest) request;
        HttpServletResponse response1 = (HttpServletResponse) response;

        Cookie[] cookies = request1.getCookies();
        Map<String, String> cookieMap = new HashMap<>();
        String token = null;

        if (cookies != null)
        {
            for (Cookie cookie : cookies)
                cookieMap.put(cookie.getName(), cookie.getValue());

            if ((cookieMap.get("tokenHeaderPayload") != null) && (cookieMap.get("tokenSignature") != null))
            {
                token = cookieMap.get("tokenHeaderPayload") + "." + cookieMap.get("tokenSignature");
                Users user = Auth.verifyAccessToken(token);

                if (user != null)
                {
                    request.setAttribute("login", true);
                    request.setAttribute("user", user);
                }
                else
                    request.setAttribute("login", false);
            }
        }

        chain.doFilter(request, response);
    }
}
