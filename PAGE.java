package com.icia.two.dto;

import com.icia.two.dto.PAGE;

import lombok.Data;

@Data
public class PAGE {
	private int page;
	private int maxPage;
	private int startPage;
	private int endPage;
	private int startRow;
	private int endRow;
	
}
