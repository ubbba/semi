package com.icia.two.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MEMBER {
	private String MId;
	private String MPw;
	private String MName;
	private String MAddr;
	private String MPhone;
	private String MEmail;
	private String MBirth;

	private String addr1;
	private String addr2;
	private String addr3;
	
}
