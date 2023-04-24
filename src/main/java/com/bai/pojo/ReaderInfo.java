package com.bai.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReaderInfo implements Serializable {
    private long readerId;
    private String name;
    private String sex;
    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date birth;
    private String address;
    private String phone;
}
