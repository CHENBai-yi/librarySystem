package com.bai.service.Imp;

import cn.hutool.core.util.StrUtil;
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
    public static volatile WebSocketSession admin;
    @Autowired
    private ChatService chatService;

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
            if (admin != null) {
                Map<String, Object> attributes1 = admin.getAttributes();
                session.getAttributes().putAll(attributes1);
            }
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
        if (sendHeartBeat(message)) return;
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
        // Map<String, Object> attributes = session.getAttributes();
        // Object uid = attributes.get("uid");
        // Object id = attributes.get("id");
        // sessionsMap.remove(uid.toString());
        // if (Objects.equals(id, 0L)) admin = null;
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
                else if (StrUtil.isNotBlank(chatVO.getOnlineFlag()) && chatVO.getOnlineFlag().equals(admin.getAttributes().get("onlineKey") + "")) {
                    chatVO.setMessageId(admin.getId());
                    chatVO.setReceiverName(admin.getAttributes().get("uname").toString());
                    chatVO.setReceiverId(Long.parseLong(admin.getAttributes().get("uid").toString()));
                    chatService.saveChat(chatVO);
                    admin.sendMessage(new TextMessage(JSONUtil.toJsonStr(chatVO)));

                } else {
                    // todo 收集其他人向管理员发来的消息，并在admin的页面上展示其他人发来的消息
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

    public void aVoid(WebSocketSession session, TextMessage message) {
        try {
            session.sendMessage(message);
        } catch (IOException e) {
            log.debug("消息发送失败aVoid：{}", this.getClass().toString());
        }
    }

    public boolean sendHeartBeat(TextMessage message) {

        try {
            if ("heartbeat".equals(message.getPayload())) {
                if (admin != null) admin.sendMessage(message);
                sessionsMap.values().forEach(session -> {
                    aVoid(session, message);
                });
                return true;
            }
        } catch (IOException e) {
            log.debug("心跳检测失败：{}", this.getClass().toString());
        }

        return false;
    }
}
