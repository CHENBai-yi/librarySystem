package com.bai.utils.exception;

import com.bai.service.LogService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.servlet.http.HttpServletRequest;

/**
 * Author:XY
 * PACkAGE:com.bai.utils.exception
 * Date:2023/10/29 18:11
 */

// @ControllerAdvice
@Slf4j
public class SystemLogRestControllerAdvice {
    @Autowired
    private LogService logService;

    @ExceptionHandler({LogingException.class,})
    public void loggingException(HttpServletRequest httpServletRequest, LogingException ex) {
        String localAddr = httpServletRequest.getHeader("X-Forwarded-For");
        if (localAddr == null) localAddr = httpServletRequest.getRemoteAddr();
        log.debug(localAddr);
        logService.logingLog(localAddr, ex.getMessage());
    }

}

