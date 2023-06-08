package com.bai.pojo.vo;

import lombok.Data;

/**
 * Author:XY
 * PACkAGE:com.bai.pojo.vo
 * Date:2023/6/7 15:57
 */
@Data
public class ChatVO {
    private String messageId; // 消息ID
    private Long senderId; // 发送者ID
    private Long receiverId; // 接收者ID
    private String senderName; // 发送者名称
    private String receiverName; // 接收者名称
    private String content; // 聊天内容
    private String sendTime; // 发送时间
    private String messageType; // 消息类型
}
