package com.bai.service.Imp;

import com.bai.dao.IpInfoDao;
import com.bai.dao.ReaderMapper;
import com.bai.pojo.Book;
import com.bai.pojo.ClassInfo;
import com.bai.pojo.Reader;
import com.bai.pojo.ReaderInfo;
import com.bai.pojo.vo.DataSheetVo;
import com.bai.service.BookService;
import com.bai.service.ClassInfoService;
import com.bai.service.ExcelService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

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
    @Autowired
    private IpInfoDao ipInfoDao;
    @Autowired
    private ClassInfoService classInfoService;
    @Autowired
    private BookService bookService;
    @Autowired
    private ObjectMapper objectMapper;

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
            Sheet sheet = workbook.createSheet("借阅者信息");

            // 创建表头行
            Row headerRow = sheet.createRow(0);
            headerRow.createCell(0).setCellValue("借阅号");
            headerRow.createCell(1).setCellValue("姓名");
            headerRow.createCell(2).setCellValue("性别");
            headerRow.createCell(3).setCellValue("生日");
            headerRow.createCell(4).setCellValue("地址");
            headerRow.createCell(5).setCellValue("手机号");

            // 封装所有读者信息数据
            List<ReaderInfo> readerInfoList = excelRepository.findAll();
            Optional.ofNullable(readerInfoList).ifPresent(readerInfos -> {
                for (int i = 0; i < readerInfos.size(); i++) {
                    Row dataRow = sheet.createRow(i + 1);
                    ReaderInfo readerInfo = readerInfos.get(i);
                    dataRow.createCell(0).setCellValue(readerInfo.getReaderId());
                    dataRow.createCell(1).setCellValue(readerInfo.getName());
                    dataRow.createCell(2).setCellValue(readerInfo.getSex());
                    dataRow.createCell(3).setCellValue(readerInfo.getBirth()); // 使用当前日期作为出生日期
                    dataRow.createCell(4).setCellValue(readerInfo.getAddress());
                    dataRow.createCell(5).setCellValue(readerInfo.getPhone());
                }
            });
            // 保存到文件
            byteArrayOutputStream = new ByteArrayOutputStream();
            workbook.write(byteArrayOutputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return byteArrayOutputStream;
    }

    @Transactional
    @Override
    public void getSheetData(Model model) throws JsonProcessingException {
        List<ReaderInfo> all = excelRepository.findAll();
        Optional.ofNullable(all).ifPresent(readerInfos -> {
            int man = 0, wowen = 0;
            for (ReaderInfo readerInfo : readerInfos) {
                if ("男".equals(readerInfo.getSex())) man++;
                else wowen++;
                model.addAttribute("man", man);
                model.addAttribute("wowen", wowen);
            }
        });
        model.addAttribute("pc", objectMapper.writeValueAsString(prettierChart()));
        model.addAttribute("nc", objectMapper.writeValueAsString(nightingaleChart()));
    }

    public List<String[]> prettierChart() {

        List<DataSheetVo.PrettierChart> group = ipInfoDao.findAllGroupByDate();
        if (group.size() > 7) group = group.subList(0, 7);
        return group.stream().map(item -> new String[]{item.getName(), String.valueOf(item.getVal())}).collect(Collectors.toList());
    }

    public List<DataSheetVo.NightingaleChart> nightingaleChart() {
        List<DataSheetVo.NightingaleChart> list = new ArrayList<>();
        List<ClassInfo> classInfos = classInfoService.selectClassInfoList();
        List<Book> bookList = bookService.queryAllBook();
        for (ClassInfo classInfo : classInfos) {
            int size = bookList.stream().filter(book -> book.getClassId() == classInfo.getClassId()).collect(Collectors.toList()).size();
            list.add(new DataSheetVo.NightingaleChart(classInfo.getClassName(), size));
        }
        return list;
    }
}
