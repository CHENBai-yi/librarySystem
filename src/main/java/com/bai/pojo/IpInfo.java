package com.bai.pojo;

import lombok.Data;

import java.io.Serializable;
import java.sql.Date;

/**
 * ip_info
 *
 * @author
 */
@Data
public class IpInfo implements Serializable {
    private static final long serialVersionUID = 1L;
    private String ipAddress;
    private String country;
    private String region;
    private String province;
    private String city;
    private String isp;
    private Date date;
    private Long id;
}