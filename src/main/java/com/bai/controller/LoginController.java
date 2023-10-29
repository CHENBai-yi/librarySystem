package com.bai.controller;

import com.bai.pojo.Admin;
import com.bai.pojo.Reader;
import com.bai.service.AdminService;
import com.bai.service.LogService;
import com.bai.service.ReaderService;
import com.bai.utils.constants.Constants;
import com.bai.utils.exception.LogingException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@Slf4j
public class LoginController {
    @Autowired
    private AdminService adminService;
    @Autowired
    private ReaderService readerService;
    @Autowired
    private LogService logService;

    // 退出登录
    @RequestMapping("/logout.html")
    public String logut(HttpSession session) {
        session.invalidate();
        return "redirect:/index";
    }

    // 进入登录界面
    @RequestMapping(value = {"/tologin"})
    public String tologin(@SessionAttribute(value = "admin", required = false) Admin admin, @SessionAttribute(value = "readercard", required = false) Reader readercard, Model model) throws LogingException {
        if (admin != null) return "forward:/admin_main.html";
        else if (readercard != null) {
            model.addAttribute("msg", "请从读者登录页登录！");
            throw new LogingException("请从读者登录页登录！");
        }
        return "login";
    }

    // 读者进入登录界面
    @RequestMapping(value = {Constants.AccessPageUrl.READER_LOGIN_URL})
    public String tologinReader(@SessionAttribute(value = "admin", required = false) Admin admin, @SessionAttribute(value = "readercard", required = false) Reader readercard, Model model) throws LogingException {

        if (readercard != null) return "forward:/reader_main.html";
        else if (admin != null) {
            model.addAttribute("msg", "请从管理员页登录！");
            throw new LogingException("请从管理员页登录！");
        }

        return "reader_login";
    }

    // 登录验证
    @PostMapping("/checklogin")
    @ResponseBody
    public Object query(String id, String password, String _model, HttpSession session) throws LogingException {
        boolean isAdmin = adminService.hasAdmin(Long.parseLong(id), password);
        boolean isReader = readerService.hasReader(Long.parseLong(id), password);

        System.out.println(isAdmin);
        HashMap<String, String> map = new HashMap<>();

        if (isAdmin) {
            Admin admin = new Admin();
            if (_model.equals("admin")) {
                admin.setAdminId(Long.parseLong(id));
                admin.setUsername(adminService.getAdminName(Long.parseLong(id)));
                admin.setPassword(password);
                session.setAttribute("admin", admin);
                map.put("stateCode", "1");
                map.put("msg", "管理员登录成功。");
                map.put("username", admin.getUsername());
            } else {
                map.put("stateCode", "-1");
                map.put("msg", "  请从管理员登录页登录！！！");
                throw new LogingException(admin.getUsername() + " 请从管理员登录页登录！！！");
            }
        } else if (isReader) {
            Reader reader = new Reader();
            if (_model.equals("reader")) {

                reader.setReaderId(Long.parseLong(id));
                reader.setUsername(readerService.getReaderName(Long.parseLong(id)));
                reader.setPassword(password);
                session.setAttribute("readercard", reader);
                map.put("stateCode", "2");
                map.put("msg", "读者登录成功。");
                map.put("username", reader.getUsername());
            } else {
                map.put("stateCode", "-1");
                map.put("msg", "请从读者登录页登录！！！");
                throw new LogingException(reader.getUsername() + " 请从读者登录页登录！！！");
            }
        } else {
            map.put("stateCode", "0");
            map.put("msg", "账号或密码错误。！！！");
            throw new LogingException("账号或密码错误。！！！");
        }
        return map;
    }

    @PostMapping(path = {Constants.AccessPageUrl.READER_CHECK_LOGIN_URL})
    public String readerCheckLogin(@RequestParam("userid") String id, String password, String _model, Model model, HttpSession session, RedirectAttributes redirectAttributes) {
        synchronized (this) {
            Object query = this.query(id, password, _model, session);
            Map<String, String> map = (Map<String, String>) query;
            String stateCode = map.get("stateCode");
            if (stateCode != null) {
                int i = Integer.parseInt(stateCode);
                if (i == -1) {
                    model.addAttribute("tip", query);
                    return "reader_login";
                }
                if (i != 0) {
                    RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();
                    if (requestAttributes != null) {
                        String s = ReaderController.getString(requestAttributes);
                        if (s != null) {
                            String msg = map.get("msg");
                            String username = map.get("username");
                            redirectAttributes.addFlashAttribute("msg", msg + "欢迎您：<br>" + username);
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
