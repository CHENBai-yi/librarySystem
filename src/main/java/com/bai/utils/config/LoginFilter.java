package com.bai.utils.config;

import com.bai.utils.constants.Constants;
import org.springframework.util.AntPathMatcher;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
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
@WebFilter(urlPatterns = {"/*"}, asyncSupported = true)
public class LoginFilter implements Filter {
    private final Set<String> accessUrl = new HashSet<>();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
        String suffix = "/**";
        accessUrl.add("/");
        accessUrl.add("/index");
        accessUrl.add("/tologin");
        accessUrl.add("/logout.html");
        accessUrl.add("/checklogin");
        accessUrl.add("/static/**");
        accessUrl.add("/webjars" + suffix);
        accessUrl.add(Constants.AccessPageUrl.XXTBCOUNTCLICK + suffix);
        accessUrl.add(Constants.AccessPageUrl.READER_CHECK_LOGIN_URL + suffix);
        accessUrl.add(Constants.AccessPageUrl.HOTTERTUIJIAN + suffix);
        accessUrl.add(Constants.AccessPageUrl.READER_LOGIN_URL + suffix);
        accessUrl.add(Constants.AccessPageUrl.MORE_NEW_BOOK + suffix);
        accessUrl.add(Constants.AccessPageUrl.ACTIVITY_URL + suffix);
        accessUrl.add(Constants.AccessPageUrl.NOTICE_URL + suffix);
        accessUrl.add(Constants.AccessPageUrl.JOURNALISM_URL + suffix);
        accessUrl.add(Constants.AccessPageUrl.WENMINGGONGYUE + suffix);
        accessUrl.add(Constants.AccessPageUrl.RUGUANGUANLI + suffix);
        accessUrl.add(Constants.AccessPageUrl.CONSULT + suffix);
        accessUrl.add(Constants.AccessPageUrl.CONCATME + suffix);
        accessUrl.add(Constants.AccessPageUrl.CONCAT_ME_ADMIN + suffix);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        String requestURI = httpServletRequest.getRequestURI();
        AntPathMatcher antPathMatcher = new AntPathMatcher();
        if (accessUrl.stream().anyMatch(t -> antPathMatcher.match(t, requestURI.replaceAll(";jsessionid=.*", "")))) {
            chain.doFilter(request, response);
            return;
        }
        /*if (requestURI.startsWith("/static") || accessUrl.contains(requestURI) || requestURI.startsWith(Constants.AccessPageUrl.ACTIVITY_URL) || requestURI.startsWith(Constants.AccessPageUrl.NOTICE_URL) || requestURI.startsWith(Constants.AccessPageUrl.JOURNALISM_URL)) {
            chain.doFilter(request, response);
            return;
        }*/
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
