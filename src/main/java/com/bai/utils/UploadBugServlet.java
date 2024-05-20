package com.bai.utils;

import cn.hutool.core.lang.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

/**
 * PROJECT:librarySystem
 * PACkAGE:com.bai.utils
 * Date:2024/1/15 22:24
 * EMAIL: chenbaiyi.work@gmail.com
 *
 * @author BaiYiChen
 */
@WebServlet(urlPatterns = {"/uploadBug"})
public class UploadBugServlet extends HttpServlet {
    private final BugManager bugManager = new BugManager();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reason = request.getParameter("reason");
        String testEnvironment = request.getParameter("testEnvironment");
        String tester = request.getParameter("tester");
        int progress = Integer.parseInt(request.getParameter("progress"));

        Bug bug = new Bug(UUID.randomUUID().hashCode(), reason, testEnvironment, tester, progress);

        response.setCharacterEncoding(StandardCharsets.UTF_8.name());
        if (bugManager.getBugs().stream().noneMatch(bug1 -> bug1.getReason().equals(bug.getReason()) && bug1.getTester().equals(bug.getTester()) && bug1.getTestEnvironment().equals(bug.getTestEnvironment()) && bug1.getProgress() == bug.getProgress())) {
            bugManager.addBug(bug);
            response.setContentType("application/json");
            response.getWriter().write("{\"status\":\"success\"}");
        } else {
            response.setContentType("application/json");
            response.getWriter().write("{\"status\":\"fail\",\"msg\":\"bug已经上传不允许重复提交\"}");
        }


    }
}
