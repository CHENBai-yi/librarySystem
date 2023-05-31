package com.bai.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * subject
 *
 * @author
 */
@Data
public class Subject implements Serializable {
    private static final long serialVersionUID = 1L;
    private Long id;
    private String subject;
}