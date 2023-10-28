package com.bai.service.Imp;

import com.bai.dao.ReaderMapper;
import com.bai.pojo.Reader;
import com.bai.pojo.ReaderInfo;
import com.bai.service.ExcelService;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Author:XY
 * PACkAGE:com.bai.service.Imp
 * Date:2023/10/28 20:20
 */
@Slf4j
@Service
public class ExcelServiceImpl implements ExcelService {
    @Autowired
    private ReaderMapper excelRepository;

    @Transactional
    @Override
    public boolean getExcel(MultipartFile file) throws Exception {
        List<ReaderInfo> list = new ArrayList<ReaderInfo>();
        List<Reader> Reader_cards = new ArrayList<Reader>();
        // 1.得到上传的表
        Workbook workbook2 = WorkbookFactory.create(file.getInputStream());

        int numberOfSheets = workbook2.getNumberOfSheets();
        for (int i = 0; i < numberOfSheets; i++) {
            // 2.获取test工作表 注意test就是excel下面的sheet名称
            Sheet sheet2 = workbook2.getSheetAt(i);
            // 3.获取表的总行数
            int num = sheet2.getLastRowNum();
            // 4.获取表总列数
            int col = sheet2.getRow(0).getLastCellNum();
            // 5.遍历excel每一行
            for (int j = 0; j <= num; j++) {
                Row row1 = sheet2.getRow(j);
                // 如果单元格中有数字或者其他格式的数据，则调用setCellType()转换为string类型
                Cell cell1 = row1.getCell(0);
                cell1.setCellType(CellType.STRING);
                // 获取表中第i行，第2列的单元格
                Cell cell2 = row1.getCell(1);
                cell2.setCellType(CellType.STRING);
                // 获取excel表的第i行，第3列的单元格
                Cell cell3 = row1.getCell(2);
                cell3.setCellType(CellType.STRING);
                Cell cell4 = row1.getCell(3);
                cell4.setCellType(CellType.NUMERIC);
                Cell cell5 = row1.getCell(4);
                cell5.setCellType(CellType.STRING);
                Cell cell6 = row1.getCell(5);
                cell6.setCellType(CellType.STRING);
                Cell cell7 = row1.getCell(6);
                cell7.setCellType(CellType.STRING);
                // 这里new 一个对象，用来装填从页面上传的Excel数据，字段根据上传的excel决定
                ReaderInfo excel = new ReaderInfo();
                Reader reader_card = new Reader();
                try {
                    Double aDouble = Double.parseDouble(cell1.getStringCellValue());
                    excel.setReaderId(aDouble.longValue());
                    excel.setName(cell2.getStringCellValue());
                    excel.setSex(cell3.getStringCellValue());
                    excel.setBirth(DateUtil.getJavaDate(cell4.getNumericCellValue()));
                    excel.setAddress(cell5.getStringCellValue());
                    excel.setPhone(cell6.getStringCellValue());
                    reader_card.setReaderId(aDouble.longValue());
                    reader_card.setPassword(cell7.getStringCellValue());
                    reader_card.setUsername(cell2.getStringCellValue());
                    list.add(excel);
                    Reader_cards.add(reader_card);
                } catch (Exception e) {
                    log.debug("excele表存在表头！！！");
                }
            }
        }
        if (list.isEmpty() || Reader_cards.isEmpty()) return false;
        excelRepository.saveAll(list);
        excelRepository.saveAll_reader_card(Reader_cards);
        return true;
    }

    @Override
    public ByteArrayOutputStream generalExcel() throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = null;
        try (Workbook workbook = new XSSFWorkbook()) {
            Sheet sheet = workbook.createSheet("Test Data");

            // 创建表头行
            Row headerRow = sheet.createRow(0);
            headerRow.createCell(0).setCellValue("reader_id");
            headerRow.createCell(1).setCellValue("name");
            headerRow.createCell(2).setCellValue("sex");
            headerRow.createCell(3).setCellValue("birth");
            headerRow.createCell(4).setCellValue("address");
            headerRow.createCell(5).setCellValue("phone");

            // 生成100条测试数据
            for (int i = 1; i <= 100; i++) {
                Row dataRow = sheet.createRow(i);
                dataRow.createCell(0).setCellValue(i);
                dataRow.createCell(1).setCellValue("Reader " + i);
                dataRow.createCell(2).setCellValue(i % 2 == 0 ? "男" : "女");
                dataRow.createCell(3).setCellValue(new Date()); // 使用当前日期作为出生日期
                dataRow.createCell(4).setCellValue("Address " + i);
                dataRow.createCell(5).setCellValue("Phone " + i);
            }

            // 保存到文件
            byteArrayOutputStream = new ByteArrayOutputStream();
            workbook.write(byteArrayOutputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return byteArrayOutputStream;
    }

}
