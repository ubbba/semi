package com.icia.two.dto;


import java.time.LocalDate;


import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class BOARD {
	
	
	private int BNo;
	private String BTitle;
	private String BWriter;
	private String BFileName;
	private MultipartFile BFile;
	private String BContent;
	private LocalDate BDate;
	private int BHit;
	private int TKind1;
	private String TKind;
	private	int BPrice;
	private int BCate;
	
}