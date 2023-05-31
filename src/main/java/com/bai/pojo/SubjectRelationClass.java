package com.bai.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * subject_relation_class
 *
 * @author
 */
@Data
public class SubjectRelationClass implements Serializable {
    private static final long serialVersionUID = 1L;
    private Long id;
    private Long subjectId;
    private Integer classId;
}