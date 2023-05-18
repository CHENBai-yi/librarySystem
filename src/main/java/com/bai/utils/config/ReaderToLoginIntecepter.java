package com.bai.utils.config;

import com.bai.utils.constants.Constants;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URL;
import java.util.Objects;

/**
 * Author:XY
 * PACkAGE:com.bai.utils.config
 * Date:2023/5/17 15:40
 */
public class ReaderToLoginIntecepter implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String referer = request.getHeader("Referer");
        URL url = new URL(referer);
        Objects.requireNonNull(RequestContextHolder.getRequestAttributes()).setAttribute(Constants.READER_REFERER, url.getFile(), 1);
        return HandlerInterceptor.super.preHandle(request, response, handler);
    }
}

