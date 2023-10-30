package com.bai.pojo.bo;

import lombok.Data;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;

/**
 * Author:XY
 * PACkAGE:com.bai.pojo.bo
 * Date:2023/6/1 8:36
 */
@Data
public class BookCommentBo {
    @NotNull(message = "评论不能为空")
    private String comment;
    @NotNull(message = "comment_post_ID不能为空")
    @Digits(message = "comment_post_ID只能是数字", integer = 1000, fraction = 0)
    private Long comment_post_ID;
    @NotNull(message = "comment_parent不能为空")
    @Digits(message = "comment_parent只能是数字", integer = 1000, fraction = 0)
    private Long comment_parent;
    @NotNull(message = "评论者不能为空")
    private String author;
    private String email;
    private String action;
}
