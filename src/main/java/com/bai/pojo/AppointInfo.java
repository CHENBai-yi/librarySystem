package com.bai.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AppointInfo implements Serializable {
    private long appointInfoId;
    private String appointText;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date appointTime;
    private  int appointNum;
    private int reappointNum;
    private String appointIns;
    private String appointRole;
    private  Date createTime;
    private  String adminName;
    private Date updateTime;
}
