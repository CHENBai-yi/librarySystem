package com.bai.utils;

import com.bai.service.AdminService;
import com.bai.service.AppointService;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.util.Date;

public class Test {
    HttpSession session;
    HttpServletRequest request;
    private AdminService adminService;
    @Autowired
    private AppointService appointService;

    @org.junit.Test
    public void Test() {
        String readerId = "17034480" + (int) (Math.random() * 1000);
        System.out.println(readerId);
    }

    @org.junit.Test

    public void Test2() {
        System.out.println(LocalDateTime.now());
    }

    @org.junit.Test
    public void test3() {
//        List<RoomInfo> roomInfos = appointService.queryAppointInfo();
//        System.out.println(roomInfos);
        System.out.println(new DateTime(new Date()).toString("yyyy-MM-dd'T'hh:mm:ss"));

    }

}
