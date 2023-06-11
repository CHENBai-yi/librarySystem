package com.bai.service.Imp;

import cn.hutool.json.JSONUtil;
import com.bai.pojo.vo.ChatVO;
import com.bai.service.ChatService;
import com.bai.service.ConsultService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.socket.*;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import java.io.IOException;
import java.util.Map;
import java.util.Objects;

/**
 * Author:XY
 * PACkAGE:com.bai.service.Imp
 * Date:2023/6/5 19:37
 */
@Service
@Slf4j
public class ConsultServiceImpl extends TextWebSocketHandler implements ConsultService {
    @Autowired
    private ChatService chatService;
    public static volatile WebSocketSession admin;

    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        super.afterConnectionEstablished(session);
      /*  String ip = session.getHandshakeHeaders().getFirst("X-Forwarded-For");
        if (ip == null) {
            ip = Objects.requireNonNull(session.getRemoteAddress()).getHostName();
        }
        log.info("成功建立连接：" + ip);
        System.out.println("成功建立连接：" + ip);
        if (Objects.equals(0L, session.getAttributes().get("id"))) {
            sessionsMap.put("admin", session);
        } else *//*sessionsMap.put(session.getId(), session);*//*sessionsMap.put(ip, session);*/

        Map<String, Object> attributes = session.getAttributes();
        Object uid = attributes.get("uid");
        Object id = attributes.get("id");
        if (Objects.equals(id, 0L)) {
            admin = session;
            System.out.println("成功建立连接，管理员id：" + uid);
        } else {
            System.out.println("成功建立连接，读者id：" + uid);
            sessionsMap.put(uid.toString(), session);
        }

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
        // super.afterConnectionClosed(session, status);
        // String ip = session.getHandshakeHeaders().getFirst("X-Forwarded-For");
        // if (ip == null) {
        //     ip = Objects.requireNonNull(session.getRemoteAddress()).getHostName();
        // }
        // sessionsMap.remove(ip);
        Map<String, Object> attributes = session.getAttributes();
        Object uid = attributes.get("uid");
        sessionsMap.remove(uid);
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
            if (chatVO.getMessageId() == null) {
                if (admin == null) log.warn("-----当前管理员不在线----");
                else if (chatVO.getOnlineFlag() != null) {
                    chatVO.setMessageId(admin.getId());
                    chatVO.setReceiverName(admin.getAttributes().get("uname").toString());
                    chatVO.setReceiverId(Long.parseLong(admin.getAttributes().get("uid").toString()));
                    chatService.saveChat(chatVO);
                    admin.sendMessage(new TextMessage(JSONUtil.toJsonStr(chatVO)));
                }
                return;
            }
          /*  if (webSocketSession.getId().equals(chatVO.getMessageId())) {
                chatService.saveChat(chatVO);
                webSocketSession.sendMessage(new TextMessage(JSONUtil.toJsonStr(chatVO)));
            }*/
            // 改用ip作为key
            if (s.equals(chatVO.getMessageId())) {
                chatService.saveChat(chatVO);
                webSocketSession.sendMessage(new TextMessage(JSONUtil.toJsonStr(chatVO)));
            }
        }

    }

    public void aVoid(WebSocketSession session, TextMessage message) throws Exception {
        session.sendMessage(message);
    }
}
