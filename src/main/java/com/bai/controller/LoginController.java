package com.bai.controller;

import com.bai.pojo.Admin;
import com.bai.pojo.Reader;
import com.bai.service.AdminService;
import com.bai.service.ReaderService;
import com.bai.utils.constants.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class LoginController {
    @Autowired
    private AdminService adminService;
    @Autowired
    private ReaderService readerService;

    // 退出登录
    @RequestMapping("/logout.html")
    public String logut(HttpSession session) {
        session.invalidate();
        return "redirect:/index";
    }

    // 进入登录界面
    @RequestMapping(value = {"/tologin"})
    public String tologin() {
        return "login";
    }

    // 读者进入登录界面
    @RequestMapping(value = {Constants.AccessPageUrl.READER_LOGIN_URL})
    public String tologinReader() {
        return "reader_login";
    }

    // 登录验证
    @PostMapping("/checklogin")
    @ResponseBody
    public Object query(String id, String password, HttpSession session) {
        boolean isAdmin = adminService.hasAdmin(Long.parseLong(id), password);
        boolean isReader = readerService.hasReader(Long.parseLong(id), password);

        System.out.println(isAdmin);
        HashMap<String, String> map = new HashMap<>();
        if (isAdmin) {
            Admin admin = new Admin();
            admin.setAdminId(Long.parseLong(id));
            admin.setUsername(adminService.getAdminName(Long.parseLong(id)));
            admin.setPassword(password);
            session.setAttribute("admin", admin);
            map.put("stateCode", "1");
            map.put("msg", "管理员登录成功");
        } else if (isReader) {
            Reader reader = new Reader();
            reader.setReaderId(Long.parseLong(id));
            reader.setUsername(readerService.getReaderName(Long.parseLong(id)));
            reader.setPassword(password);
            session.setAttribute("readercard", reader);
            map.put("stateCode", "2");
            map.put("msg", "读者登录成功");

        } else {
            map.put("stateCode", "0");
            map.put("msg", "账号或密码错误");
        }
        return map;
    }

    @PostMapping(path = {Constants.AccessPageUrl.READER_CHECK_LOGIN_URL})
    public String readerCheckLogin(@RequestParam("userid") String id, String password, Model model, HttpSession session) {
        synchronized (this) {
            Object query = this.query(id, password, session);
            Map<String, String> map = (Map<String, String>) query;
            String stateCode = map.get("stateCode");
            if (stateCode != null) {
                int i = Integer.parseInt(stateCode);
                if (i != 0) {
                    RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();
                    if (requestAttributes != null) {
                        String s = ReaderController.getString(requestAttributes);
                        if (s != null) {
                            return s;
                        }
                    }
                    if (i == 2) return "redirect:/reader_admin";
                    else return "redirect:/admin_main.html";
                }
            }
            model.addAttribute("tip", query);
            return "reader_login";
        }
    }
}
