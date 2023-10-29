package com.bai.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.ui.Model;
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

    void getSheetData(Model model) throws JsonProcessingException;
}
