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
public class Appoint implements Serializable {
    private long appointId;
    private long readerId;
    private String username;
    private String location;
    private String bookName;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date appointTime;

}
