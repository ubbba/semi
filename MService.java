package com.icia.two.service;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpResponse;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.two.dto.PAGE;
import com.icia.two.dao.MDAO;
import com.icia.two.dto.MEMBER;

@Service
public class MService {
	@Autowired
	private MDAO dao;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	BCryptPasswordEncoder pwEnc;
	
	private ModelAndView mav = new ModelAndView();
	
	// 회원가입
		public ModelAndView mJoin(MEMBER member) throws IllegalStateException, IOException {
			

			// 주소 합치기
			member.setMAddr("("+member.getAddr1()+") " + member.getAddr2() + ", " + member.getAddr3());
		
			
			// 입력받은 패스워드 -> 암호화 -> db로 전달
			member.setMPw(pwEnc.encode(member.getMPw()));
			
			int result = dao.mJoin(member);
		
			
			if (result > 0) {
				mav.setViewName("index");
			} else {
				mav.setViewName("M_Join");
			}
			return mav;
		}
	
	// 아이디 중복검사
		public String idOverlap(String MId) {
			
			String idCheck = dao.idOverlap(MId);
		
			String result = null;
			
			if(idCheck==null) {
				result = "OK";	// 중복x
			} else {
				result = "NO";	// 중복o
			}
			
			return result;
		}


		
		public ModelAndView mLogin(MEMBER member) {
			// [1] 입력한 ID로 암호화 된 password를 검색하고
			MEMBER encPw= dao.mView(member.getMId());
			

			// [2] db에 저장된 password와 입력한 password를 match해서 일치여부 확인  
			if(pwEnc.matches(member.getMPw(), encPw.getMPw())) {
				session.setAttribute("loginId", encPw.getMId());
				mav.setViewName("index");
			} else {
				mav.setViewName("M_Login");
			}
			
			return mav;
		}

		private static final int PAGE_LIMIT=5;
		private static final int BLOCK_LIMIT=5;

		public ModelAndView mList(int page) {
			PAGE paging = new PAGE();
			
			int listCount = dao.mListCount();
			
			int startRow = (page - 1) * PAGE_LIMIT + 1;
			int endRow = page * PAGE_LIMIT;

			// Math.ceil() : 올림
			// Math.floor() : 버림
			// Math.round() : 반올림
			int maxPage = (int) (Math.ceil((double) listCount / PAGE_LIMIT));
			int startPage = (((int) (Math.ceil((double) page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
			int endPage = startPage + BLOCK_LIMIT - 1;

			if (endPage > maxPage) {
				endPage = maxPage;
			}

			paging.setPage(page);
			
			paging.setStartRow(startRow);
			paging.setEndRow(endRow);
			
			paging.setMaxPage(maxPage);
			paging.setStartPage(startPage);
			paging.setEndPage(endPage);
			
			//////////////////////////////////////
			
			List<MEMBER> memberList = dao.mList(paging);


			mav.addObject("memberList", memberList);
			mav.addObject("paging", paging);
			mav.setViewName("M_List");
			return mav;
		}
		
		public ModelAndView mView(int page, String MId) {
			MEMBER member = dao.mView(MId);
			
			mav.addObject("view", member);
			mav.addObject("page", page);
			mav.setViewName("M_View");
			return mav;
		}
		
		public ModelAndView mDelete(int page, String MId) {
			int result = dao.mDelete(MId);
			
			if(result>0) {
				session.invalidate();
				
			
				mav.setViewName("index");
			} else {
				mav.setViewName("index");
			}
			System.out.println("mav :" +mav);
			return mav;
		}
		
		// 관리자
		public ModelAndView mDelete2(int page, String MId) {
			int result = dao.mDelete(MId);
			
			if(result>0) {
				mav.setViewName("redirect:/M_list?MID="+MId+"&page="+page);
			} else {
				mav.setViewName("index");
			}
			System.out.println("mav :" +mav);
			return mav;
		}
		
		
		public ModelAndView mModiForm(int page, String MId) {
			MEMBER member = dao.mModiForm(MId);
			
			mav.addObject("modify", member);
			mav.addObject("page", page);
			mav.setViewName("M_Modify");
			return mav;
		}

		public ModelAndView mModify(int page, MEMBER member) throws IllegalStateException, IOException {
			
			member.setMPw(pwEnc.encode(member.getMPw()));
			// 주소 합치기
			member.setMAddr("("+member.getAddr1()+") " + member.getAddr2() + ", " + member.getAddr3());
		
			
			int result = dao.mModify(member);
			
			if (result > 0) {
				mav.setViewName("redirect:/M_view?MId="+member.getMId()+"&page="+page);
			} else {
				mav.setViewName("redirect:/M_list?page="+page);
			}
			
			return mav;
		}

}