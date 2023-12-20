package com.bai.utils.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * PROJECT:librarySystem
 * PACkAGE:com.bai.utils.config
 * Date:2023/12/20 21:59
 * EMAIL: chenbaiyi.work@gmail.com
 *
 * @author BaiYiChen
 */

@Slf4j
@WebFilter(urlPatterns = {"/checklogin", "/reader/checklogin"}, asyncSupported = true)
public class LoginCheckFilter extends OncePerRequestFilter {

    @Override
    protected void doFilterInternal(final HttpServletRequest request, final HttpServletResponse response, final FilterChain filterChain) throws ServletException, IOException {

        filterChain.doFilter(request, response);
    }
}
