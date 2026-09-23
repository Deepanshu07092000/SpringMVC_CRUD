package com.deepanshu.filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;

public class RequestLoggingFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        //----- Convert ServletRequest into HttpServletRequest
        HttpServletRequest httpRequest = (HttpServletRequest) request;

        System.out.println("========== FILTER START ==========");
        System.out.println("Request URI : " + httpRequest.getRequestURI());
        System.out.println("HTTP Method : " + httpRequest.getMethod());

        //------- Continue the request to the DispatcherServlet
        chain.doFilter(request, response);
        System.out.println("========== FILTER END ==========");
    }
}