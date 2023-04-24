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
public class Lend implements Serializable {
    private long serNum;
    private long bookId;
    private long readerId;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date lendDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date backDate;
}
