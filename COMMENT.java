package com.icia.two.dto;

import com.icia.two.dto.COMMENT;

import lombok.Data;

@Data
public class COMMENT {
	private int CNo;			// 댓글 번호 (pk)
	private int CBNo;			// 게시글 번호 (fk)
	private String CWriter;		// 작성자
	private String CContent;	// 댓글 내용
}
