package com.bai.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class CommentTimeHelper {

    private static final long ONE_MINUTE_IN_MILLIS = 60000;
    private static final long ONE_HOUR_IN_MILLIS = 3600000;
    private static final long ONE_DAY_IN_MILLIS = 86400000;

    public static String getTimeString(Date commentTime) {
        long currentTime = System.currentTimeMillis();
        long timeDiff = currentTime - commentTime.getTime();

        if (timeDiff < ONE_MINUTE_IN_MILLIS) {
            return "刚刚";
        } else if (timeDiff < ONE_HOUR_IN_MILLIS) {
            return (timeDiff / ONE_MINUTE_IN_MILLIS) + "分钟前";
        } else if (timeDiff < ONE_DAY_IN_MILLIS) {
            return (timeDiff / ONE_HOUR_IN_MILLIS) + "小时前";
        } else if (timeDiff < ONE_DAY_IN_MILLIS * 7) {
            return (timeDiff / ONE_DAY_IN_MILLIS) + "天前";
        } else {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
            return sdf.format(commentTime);
        }
    }
}
