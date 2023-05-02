package com.bai.utils.constants;

import lombok.extern.slf4j.Slf4j;

/**
 * Author:XY
 * PACkAGE:com.bai.utils.constants
 * Date:2023/4/27 17:00
 */
@Slf4j
public class Constants {
    public static final int PAGESIZE = 2;
    public static final int HOME_PAGE_MSG_SIZE = 10;
    public static final int PAGING_NUM = 7;
    public static final int CLASS_INFO_LIST = 10;
    public static final int RECOMMENDED_BOOK_SIZE = 10;

    public enum News {
        NOTICE("公告", 0),
        ACTIVITY("活动", 2),
        NEWS("新闻", 1);
        public final String type;
        public final int code;

        News(String type, int code) {
            this.type = type;
            this.code = code;
        }

        public News getNews(int code) {
            switch (code) {
                case 0:
                    return NOTICE;
                case 1:
                    return NEWS;
                case 2:
                    return ACTIVITY;
                default:
                    log.warn("没有这个新闻常量");
                    return null;
            }

        }
    }

    public enum Role {
        ADMIN("管理员", "admin"),
        READER("借阅者", "reader");
        public final String usernmae;
        public final String role;

        Role(String usernmae, String role) {
            this.usernmae = usernmae;
            this.role = role;
        }
    }

    public static class AccessPageUrl {
        public static final String NOTICE_URL = "/news/notice/page";
        public static final String JOURNALISM_URL = "/news/journalism/page";
        public static final String ACTIVITY_URL = "/news/activity/page";
        public static final String READER_LOGIN_URL = "/reader/tologin";
        public static final String READER_CHECK_LOGIN_URL = "/reader/checklogin";
    }
}
