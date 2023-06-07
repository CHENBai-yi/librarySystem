package com.bai.utils.config;

import com.bai.pojo.Admin;
import com.bai.pojo.Reader;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.HandshakeInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Author:XY
 * PACkAGE:com.bai.utils.config
 * Date:2023/6/7 18:03
 */
@Component
public class MyHandshakeHandler implements HandshakeInterceptor {

    @Override
    public boolean beforeHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler, Map<String, Object> attributes) throws Exception {
        ServletServerHttpRequest servletServerHttpRequest = (ServletServerHttpRequest) request;
        HttpServletRequest servletRequest = servletServerHttpRequest.getServletRequest();
        HttpSession session = servletRequest.getSession(false);
        if (session != null) {
            Object readercard = session.getAttribute("readercard");
            Object admin = session.getAttribute("admin");
            if (admin != null) {
                Admin admin1 = (Admin) admin;
                attributes.put("uid", admin1.getAdminId());
                attributes.put("uname", admin1.getUsername());
                attributes.put("id", 0L);
                return true;
            } else if (readercard != null) {
                Reader reader = (Reader) readercard;
                attributes.put("uid", reader.getReaderId());
                attributes.put("uname", reader.getUsername());
                attributes.put("id", 1L);
                return true;
            }
        }
        return false;
    }

    @Override
    public void afterHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler, Exception exception) {

    }
}
