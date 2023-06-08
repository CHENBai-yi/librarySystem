package com.bai.pojo;

import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * chat
 *
 * @author
 */
@Data
public class Chat implements Serializable {
    private static final long serialVersionUID = 1L;
    private String messageId;
    private Long senderId;
    private Long receiverId;
    private String senderName;
    private String receiverName;
    private String content;
    private LocalDateTime sendTime;
    private Object messageType;
}