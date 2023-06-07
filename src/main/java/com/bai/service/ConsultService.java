package com.bai.service;

import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;

import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Author:XY
 * PACkAGE:com.bai.service
 * Date:2023/6/5 19:37
 */
public interface ConsultService {
    Map<String, WebSocketSession> sessionsMap = new ConcurrentHashMap<>();

    void forwardMsg(TextMessage message) throws IOException;
}
