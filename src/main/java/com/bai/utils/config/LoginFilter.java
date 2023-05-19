package com.bai.utils.config;

import com.bai.utils.constants.Constants;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

/**
 * Author:XY
 * PACkAGE:com.bai.utils.config
 * Date:2023/5/19 14:50
 */
// @WebFilter(urlPatterns = {"/*"})
public class LoginFilter implements Filter {
    private final Set<String> accessUrl = new HashSet<>();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
        accessUrl.add("/");
        accessUrl.add("/index");
        accessUrl.add("/tologin");
        accessUrl.add("/logout.html");
        accessUrl.add("/checklogin");
        accessUrl.add(Constants.AccessPageUrl.XXTBCOUNTCLICK);
        accessUrl.add(Constants.AccessPageUrl.READER_CHECK_LOGIN_URL);
        accessUrl.add(Constants.AccessPageUrl.HOTTERTUIJIAN);
        accessUrl.add(Constants.AccessPageUrl.READER_LOGIN_URL);
        accessUrl.add(Constants.AccessPageUrl.MORE_NEW_BOOK);

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        String requestURI = httpServletRequest.getRequestURI();
        if (accessUrl.contains(requestURI) || requestURI.startsWith(Constants.AccessPageUrl.NOTICE_URL) || requestURI.startsWith(Constants.AccessPageUrl.JOURNALISM_URL) || requestURI.startsWith(Constants.AccessPageUrl.ACTIVITY_URL) || requestURI.startsWith("/static")) {
            chain.doFilter(request, response);
            return;
        }
        HttpSession session = httpServletRequest.getSession();
        Object readercard = session.getAttribute("readercard");
        Object admin = session.getAttribute("admin");
        if (readercard == null && admin == null) {
            HttpServletResponse httpServletResponse = (HttpServletResponse) response;
            httpServletResponse.sendRedirect(Constants.AccessPageUrl.READER_LOGIN_URL);
            return;
        }
        chain.doFilter(request, response);
    }
}
