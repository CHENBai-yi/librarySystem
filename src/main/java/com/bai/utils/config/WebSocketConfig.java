package com.bai.utils.config;

import com.bai.service.Imp.ConsultServiceImpl;
import com.bai.utils.constants.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

/**
 * Author:XY
 * PACkAGE:com.bai.utils.config
 * Date:2023/6/5 19:39
 */
@Configuration
@EnableWebSocket
public class WebSocketConfig implements WebSocketConfigurer {
    @Autowired
    private ConsultServiceImpl consultService;

    @Override
    public void registerWebSocketHandlers(WebSocketHandlerRegistry webSocketHandlerRegistry) {
        webSocketHandlerRegistry.addHandler(consultService, Constants.AccessPageUrl.CONSULT)
                .setAllowedOrigins("*")
        /*.withSockJS()*/;
    }
}
