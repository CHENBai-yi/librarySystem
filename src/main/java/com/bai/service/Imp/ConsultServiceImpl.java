package com.bai.service.Imp;

import cn.hutool.json.JSONUtil;
import com.bai.pojo.vo.ChatVO;
import com.bai.service.ConsultService;
import org.springframework.stereotype.Service;
import org.springframework.web.socket.*;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import java.io.IOException;
import java.util.Objects;

/**
 * Author:XY
 * PACkAGE:com.bai.service.Imp
 * Date:2023/6/5 19:37
 */
@Service
public class ConsultServiceImpl extends TextWebSocketHandler implements ConsultService {
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        super.afterConnectionEstablished(session);
        System.out.println("建立连接");
        sessionsMap.put(session.getId(), session);
    }

    @Override
    public void handleMessage(WebSocketSession session, WebSocketMessage<?> message) throws Exception {
        super.handleMessage(session, message);
    }

    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        super.handleTextMessage(session, message);
        forwardMsg(message);
    }

    @Override
    protected void handlePongMessage(WebSocketSession session, PongMessage message) throws Exception {
        super.handlePongMessage(session, message);
    }

    @Override
    public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
        super.handleTransportError(session, exception);
    }

    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        super.afterConnectionClosed(session, status);
        sessionsMap.remove(session.getId());
        session.close();
    }

    @Override
    public boolean supportsPartialMessages() {
        return super.supportsPartialMessages();
    }

    /**
     * 转发消息逻辑
     *
     * @param message 消息
     * @throws IOException ioexception
     */
    @Override
    public void forwardMsg(TextMessage message) throws IOException {
        ChatVO chatVO = JSONUtil.toBean(message.getPayload(), ChatVO.class);
        for (String s : sessionsMap.keySet()) {
            WebSocketSession webSocketSession = sessionsMap.get(s);
            Object id = webSocketSession.getAttributes().get("id");
            if (chatVO.getMessageId() != null) {
                if (s.equals(chatVO.getMessageId())) {
                    webSocketSession.sendMessage(new TextMessage(JSONUtil.toJsonStr(chatVO)));
                    return;
                }
            }
            if (Objects.equals(id, chatVO.getReceiverId())) {
                Object uname = webSocketSession.getAttributes().get("uname");
                Object uid = webSocketSession.getAttributes().get("uid");
                chatVO.setReceiverName(uname + "");
                chatVO.setReceiverId(Long.parseLong(uid + ""));
                webSocketSession.sendMessage(new TextMessage(JSONUtil.toJsonStr(chatVO)));
            }
        }
    }
}
