package com.bai.controller;

import com.bai.pojo.Admin;
import com.bai.pojo.Reader;
import com.bai.service.AdminService;
import com.bai.service.Imp.ConsultServiceImpl;
import com.bai.service.Imp.LogServiceImp;
import com.bai.service.ReaderService;
import com.bai.utils.constants.Constants;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
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
    private LogServiceImp logService;
    @Autowired
    private ConsultServiceImpl consultService;

    // 退出登录
    @RequestMapping("/logout.html")
    public String logut(HttpSession session) {
        session.invalidate();
        consultService.admin_logout();
        return "redirect:/index";
    }

    // 进入登录界面
    @RequestMapping(value = {"/tologin"})
    public String tologin(HttpServletRequest httpServletRequest, @SessionAttribute(value = "admin", required = false) Admin admin, @SessionAttribute(value = "readercard", required = false) Reader readercard, Model model) {
        if (admin != null) return "forward:/admin_main.html";
        else if (readercard != null) {
            // model.addAttribute("msg", "请从读者登录页登录！");
            return "redirect:" + Constants.AccessPageUrl.READER_LOGIN_URL;
        }
        return "login";
    }

    // 读者进入登录界面
    @RequestMapping(value = {Constants.AccessPageUrl.READER_LOGIN_URL})
    public String tologinReader(HttpServletRequest httpServletRequest, @SessionAttribute(value = "admin", required = false) Admin admin, @SessionAttribute(value = "readercard", required = false) Reader readercard, Model model) {
        if (readercard != null) return "forward:/reader_main.html";
        else if (admin != null) {
            // model.addAttribute("msg", "请从管理员页登录！");
            return "redirect:/tologin";
        }
        return "reader_login";
    }

    // 登录验证
    @PostMapping("/checklogin")
    @ResponseBody
    public Object query(String id, String password, String _model, HttpSession session, HttpServletRequest httpServletRequest) {
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
            }
        } else {
            map.put("stateCode", "0");
            map.put("msg", "账号或密码错误。！！！");
        }
        logService.logingLog(logService.parseIp(httpServletRequest), map.toString());
        return map;
    }

    @PostMapping(path = {Constants.AccessPageUrl.READER_CHECK_LOGIN_URL})
    public String readerCheckLogin(HttpServletRequest httpServletRequest, @RequestParam("userid") String id, String password, String _model, Model model, HttpSession session, RedirectAttributes redirectAttributes) {
        synchronized (this) {
            Object query = this.query(id, password, _model, session, httpServletRequest);
            Map<String, String> map = (Map<String, String>) query;
            String stateCode = map.get("stateCode");
            logService.logingLog(logService.parseIp(httpServletRequest), query.toString());
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
