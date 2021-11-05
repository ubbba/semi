package com.icia.two.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.two.dto.BOARD;
import com.icia.two.dto.COMMENT;
import com.icia.two.service.BService;

@Controller
public class BController {
	
	@Autowired
	private BService bsvc;
	
	private ModelAndView mav = new ModelAndView();
	
	// B_list : 판매 게시글 목록보기
		@RequestMapping(value="/B_list", method= RequestMethod.GET)
		public ModelAndView bList(@RequestParam(value="page",required=false,defaultValue="1") int page) {
			if(page <= 0) {
				page = 1;
			}
			
			mav = bsvc.bList(page);
			
			return mav;
		} 
		
	// C_list : 커뮤니티 게시글 목록보기 
		@RequestMapping(value="/C_list", method= RequestMethod.GET)
		public ModelAndView cList(@RequestParam(value="page",required=false,defaultValue="1") int page) {
			if(page <= 0) {
				page = 1;
			}
			
			mav = bsvc.cList(page);
			
			return mav;
		}
	
		//B_writeForm : 작성페이지 이동
		@RequestMapping(value="/B_writeForm", method=RequestMethod.GET) 
		public String bWriteForm() {
			return "B_Write";
			
		}


		//B_Write : 글작성
		@RequestMapping(value = "/B_Write", method = RequestMethod.POST)
		public ModelAndView bWrite(@ModelAttribute BOARD board) throws IllegalStateException, IOException {
		System.out.println(board);
		
		mav = bsvc.bWrite(board);
		
		return mav;
	}
		

		//C_writeForm : 작성페이지 이동
		@RequestMapping(value="/C_writeForm", method=RequestMethod.GET) 
		public String cWriteForm() {
			return "C_Write";
			
		}


		//C_Write : 글작성
		@RequestMapping(value = "/C_Write", method = RequestMethod.POST)
		public ModelAndView cWrite(@ModelAttribute BOARD board) throws IllegalStateException, IOException {
		System.out.println(board);
		System.out.println("ㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴ");
		mav = bsvc.cWrite(board);
		return mav;
	}


		
		// B_view : 게시글 상세보기
		@RequestMapping(value = "/B_view", method = RequestMethod.GET)
		public ModelAndView bView(@RequestParam(value="page", required=false, defaultValue="1") int page, @RequestParam("BNo") int BNo)  {
			mav = bsvc.bView(page, BNo);
			return mav;
		}
		
	
		List<COMMENT> commentList = new ArrayList<COMMENT>();
		// D_list : 댓글 리스트 불러오기
		@RequestMapping(value = "/D_list", method = RequestMethod.POST)
		
		public @ResponseBody List<COMMENT> dList(@RequestParam("CBNo") int CBNo) {
			
			commentList = bsvc.dList(CBNo);
			return commentList;
		}
		
		
		// D_write : 댓글 작성
		@RequestMapping(value = "/D_write", method = RequestMethod.POST)
		public @ResponseBody List<COMMENT> dWrite(@ModelAttribute COMMENT comment) {
			
			commentList = bsvc.dWrite(comment);
			return commentList;
		}
		
		
		// D_delete : 댓글 삭제
		@RequestMapping(value = "/D_delete", method = RequestMethod.GET)
		public @ResponseBody List<COMMENT> dDelete(@ModelAttribute COMMENT comment) {
			
			commentList = bsvc.dDelete(comment);
			return commentList;
		}

		// C_view : 게시글 상세보기
		@RequestMapping(value = "/C_view", method = RequestMethod.GET)
		public ModelAndView cView(@RequestParam(value="page", required=false, defaultValue="1") int page, @RequestParam("BNo") int BNo)  {
			mav = bsvc.cView(page, BNo);
			return mav;
		}
		
		// B_modiForm : 게시글 수정 페이지 이동
		@RequestMapping(value = "/B_modiForm", method = RequestMethod.GET)
		public ModelAndView bModiForm(@RequestParam(value="page", required=false, defaultValue="1") int page, @RequestParam("BNo") int BNo, @RequestParam("MId") String MId)  {
			mav = bsvc.bModiForm(page, BNo, MId);
			return mav;
		}
		
		
		
		// B_modify : 게시글 수정
		@RequestMapping(value = "/B_modify", method = RequestMethod.POST)
		public ModelAndView bModify(@RequestParam(value="page", required=false, defaultValue="1") int page, @ModelAttribute BOARD board) throws IllegalStateException, IOException {
			mav = bsvc.bModify(page, board);
			return mav;
		}
		
		
		
		// C_modiForm : 커뮤니티글 수정 페이지 이동
				@RequestMapping(value = "/C_modiForm", method = RequestMethod.GET)
				public ModelAndView cModiForm(@RequestParam(value="page", required=false, defaultValue="1") int page, @RequestParam("BNo") int BNo,@RequestParam("MId") String MId)  {
					mav = bsvc.cModiForm(page, BNo,MId);
					return mav;
				}

		// C_modify : 일반 게시글 수정
				@RequestMapping(value = "/C_modify", method = RequestMethod.POST)
				public ModelAndView cModify(@RequestParam(value="page", required=false, defaultValue="1") int page, @ModelAttribute BOARD board) throws IllegalStateException, IOException {
					mav = bsvc.cModify(page, board);
					return mav;
				}
		
				
		// B_delete : 게시글 삭제
		@RequestMapping(value = "/B_delete", method = RequestMethod.GET)
		public ModelAndView bDelete(@RequestParam(value="page", required=false, defaultValue="1") int page, @RequestParam("BNo") int BNo)  {
			mav = bsvc.bDelete(page, BNo);
			return mav;
		}

		
		// C_search : 게시글 검색
		@RequestMapping(value = "/C_search", method = RequestMethod.GET)
		public ModelAndView cSearch(@RequestParam("selectVal") String selectVal, @RequestParam("keyword") String keyword) {

			mav = bsvc.cSearch(selectVal, keyword);
		
			return mav;
		}
		
		// B_search : 게시글 검색
				@RequestMapping(value = "B_search", method = RequestMethod.GET)
				public ModelAndView bSearch(@RequestParam("selectVal") String selectVal, @RequestParam("keyword") String keyword) {
					
		
					
					mav = bsvc.bSearch(selectVal, keyword);
					return mav;
				}
				
			// BS_list : 게시글 목록보기(선택)
				@RequestMapping(value="/BS_list", method= RequestMethod.GET)
				public ModelAndView bsList(@RequestParam(value="page",required=false,defaultValue="1") int page) {
					if(page <= 0) {
						page = 1;
					}
					
					mav = bsvc.bsList(page);
					
					return mav;
				}

		
		// B1_list : 판매 게시글 목록보기
		@RequestMapping(value="/B1_list", method= RequestMethod.GET)
		public ModelAndView b1List(@RequestParam(value="page",required=false,defaultValue="1") int page) {
			if(page <= 0) {
				page = 1;
			}
			
			mav = bsvc.b1List(page);
			
			return mav;
		}
		

		
		// B2_list : 판매 게시글 목록보기
		@RequestMapping(value="/B2_list", method= RequestMethod.GET)
		public ModelAndView b2List(@RequestParam(value="page",required=false,defaultValue="1") int page) {
			if(page <= 0) {
				page = 1;
			}
			
			mav = bsvc.b2List(page);
			
			return mav;
		}
		
		
		// B3_list : 판매 게시글 목록보기
		@RequestMapping(value="/B3_list", method= RequestMethod.GET)
		public ModelAndView b3List(@RequestParam(value="page",required=false,defaultValue="1") int page) {
			if(page <= 0) {
				page = 1;
			}
			
			mav = bsvc.b3List(page);
			
			return mav;
		}
		
		// B4_list : 판매 게시글 목록보기
		@RequestMapping(value="/B4_list", method= RequestMethod.GET)
		public ModelAndView b4List(@RequestParam(value="page",required=false,defaultValue="1") int page) {
			if(page <= 0) {
				page = 1;
			}
			
			mav = bsvc.b4List(page);
			
			return mav;
		}
		
		// MB_List : 내가 작성한 게시글 보기
		@RequestMapping(value="/MB_List", method= RequestMethod.GET)
		public ModelAndView mbList(@RequestParam("MId") String MId) {
			
			System.out.println("MId : " + MId);
			mav = bsvc.mbList(MId);
			
			return mav;
		}
		
		// C_delete : 게시글 삭제
				@RequestMapping(value = "/C_delete", method = RequestMethod.GET)
				public ModelAndView cDelete(@RequestParam(value="page", required=false, defaultValue="1") int page, @RequestParam("BNo") int BNo)  {
					mav = bsvc.cDelete(page, BNo);
					return mav;
				}

		
		
		
}
