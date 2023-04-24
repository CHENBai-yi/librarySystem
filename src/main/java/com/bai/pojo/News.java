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
public class News implements Serializable {
    private long newsId;
    private String newsAdmin;
    private String newsTitle;
    private String newsContent;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date   createTime;

}
