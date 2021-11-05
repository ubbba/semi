package com.icia.two.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.icia.two.dto.BOARD;
import com.icia.two.dto.COMMENT;
import com.icia.two.dto.PAGE;

@Repository
public class BDAO {
	
	@Autowired
	private SqlSessionTemplate sql;

	// 게시글 조회
	public int bListCount() {
		
		return sql.selectOne("Board.bListCount");
	}

	public List<BOARD> bList(PAGE paging) {
		
		return sql.selectList("Board.bList", paging);
	}

	public List<BOARD> bList2() {
		
		return sql.selectList("Board.bList2");
	}

	
	  public List<BOARD> bList3() {
	  
	  return sql.selectList("Board.bList3"); 
	  }
	  
	  public List<BOARD> bList4() {
		  
		  return sql.selectList("Board.bList4"); 
		  }

	public int cListCount() {
		
		return sql.selectOne("Board.cListCount");
	}

	public List<BOARD> cList(PAGE paging) {
		
		return sql.selectList("Board.cList", paging);
	}
	
	public int bWrite(BOARD board) {

		return sql.insert("Board.bWrite", board);
	}

	public BOARD bView(int BNo) {
		sql.update("Board.bHit", BNo);
		return sql.selectOne("Board.bView", BNo);
	}
	

	 
	public List<COMMENT> dList(int CBNo) {
		
		return sql.selectList("Board.dList", CBNo);
	}

	public int dWrite(COMMENT comment) {
	
		return sql.insert("Board.dWrite", comment);
	}

	public int dDelete(COMMENT comment) {
		
		return sql.delete("Board.dDelete", comment);
	}

	public BOARD cView(int BNo) {
		sql.update("Board.bHit", BNo);
		return sql.selectOne("Board.cView", BNo);
	}
	
	public BOARD bModiForm(int BNo) {

		return sql.selectOne("Board.bView", BNo);
	}

	public int bModify(BOARD board) {
		
		return sql.update("Board.bModify", board);
	}
	


	public int bDelete(int BNo) {
		
		return sql.delete("Board.bDelete", BNo);
	}

	public String mEMail(String BWriter) {
		
		return sql.selectOne("Board.emialsearch", BWriter);
	}

	public List<BOARD> cSearch(String selectVal, String keyword) {
		if(selectVal.equals("BWriter")) {
			return sql.selectList("Board.csWriter", keyword);
		} else if (selectVal.equals("BTitle")) {
			return sql.selectList("Board.csTitle", keyword);
		}  else {
			return sql.selectList("Board.csContent", keyword);	
		}
	}
	
	// 게시글검색
		public List<BOARD> bSearch(String selectVal, String keyword) {
			
			if(selectVal.equals("BWriter")) {
				return sql.selectList("Board.bsWriter", keyword);
			} else if(selectVal.equals("BTitle")) {
				return sql.selectList("Board.bsTitle", keyword);
			} else {
				return sql.selectList("Board.bsContent", keyword);
			}
		}
		
		// 게시글 조회
			public int bsListCount() {
				
				return sql.selectOne("Board.bsListCount");
			}

			public List<BOARD> bsList(PAGE paging) {
				
				return sql.selectList("Board.bsList", paging);
			}

	public List<BOARD> b1List(PAGE paging) {
		
		return sql.selectList("Board.b1List", paging);
	}

	public List<BOARD> b1List2() {
		return sql.selectList("Board.b1List2");
	}

	public List<BOARD> b1List3() {
		return sql.selectList("Board.b1List3");
	}

	public int b1ListCount() {
		
		return sql.selectOne("Board.b1ListCount");
	}
	

	
	public List<BOARD> b2List(PAGE paging) {
		
		return sql.selectList("Board.b2List", paging);
	}

	public List<BOARD> b2List2() {
		return sql.selectList("Board.b2List2");
	}

	public List<BOARD> b2List3() {
		return sql.selectList("Board.b2List3");
	}

	public int b2ListCount() {
		
		return sql.selectOne("Board.b2ListCount");
	}
	
	
	
	public List<BOARD> b3List(PAGE paging) {
		
		return sql.selectList("Board.b3List", paging);
	}

	public List<BOARD> b3List2() {
		return sql.selectList("Board.b3List2");
	}

	public List<BOARD> b3List3() {
		return sql.selectList("Board.b3List3");
	}

	public int b3ListCount() {
		
		return sql.selectOne("Board.b3ListCount");
	}

	
	public List<BOARD> b4List(PAGE paging) {
		
		return sql.selectList("Board.b4List", paging);
	}

	public List<BOARD> b4List2() {
		return sql.selectList("Board.b4List2");
	}

	public List<BOARD> b4List3() {
		return sql.selectList("Board.b4List3");
	}

	public int b4ListCount() {
		
		return sql.selectOne("Board.b4ListCount");
	}

	public int cWrite(BOARD board) {

		return sql.insert("Board.cWrite", board);
	}

	public List<BOARD> mbList(String MId) {
		System.out.println("BWriter :::" + MId);
		return sql.selectList("Board.mbList", MId);
	}
	


}
