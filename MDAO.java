package com.icia.two.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.two.dto.PAGE;
import com.icia.two.dto.MEMBER;

@Repository
public class MDAO {
	
	@Autowired
	private SqlSessionTemplate sql;
	
	public int mJoin(MEMBER member) {

		return sql.insert("Member.mJoin", member);
	}
	
	public String idOverlap(String MId) {
	
		return sql.selectOne("Member.idOverlap", MId);
	}
	
	public MEMBER mLogin(MEMBER member) {
		
		return sql.selectOne("Member.mLogin", member);
	}
	
	public MEMBER mView(String MId) {
		
		return sql.selectOne("Member.mView", MId);
	}
	

	public List<MEMBER> mList(PAGE paging) {
		
		return sql.selectList("Member.mList",paging);
	}

	public int mListCount() {
		
		return sql.selectOne("Member.mListCount");
	}


	public int mDelete(String MId) {
		
		return sql.delete("Member.mDelete", MId);
	}
	
	public MEMBER mModiForm(String MId) {
		
		return sql.selectOne("Member.mView", MId);
	}

	public int mModify(MEMBER member) {
		
		return sql.update("Member.mModify", member);
	}
}
