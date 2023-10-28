package com.bai.service;

import org.springframework.web.multipart.MultipartFile;

import java.io.ByteArrayOutputStream;

/**
 * Author:XY
 * PACkAGE:com.bai.service
 * Date:2023/10/28 20:20
 */
public interface ExcelService {
    boolean getExcel(MultipartFile file) throws Exception;

    ByteArrayOutputStream generalExcel() throws Exception;
}
