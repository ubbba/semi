package com.icia.two.service;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.icia.two.dao.BDAO;
import com.icia.two.dto.PAGE;
import com.icia.two.dto.BOARD;
import com.icia.two.dto.COMMENT;




@Service
public class BService {
	
	private ModelAndView mav = new ModelAndView();
	
	@Autowired
	private BDAO dao;
	
	@Autowired
	private HttpSession session;
	
	
	// 메소드 밖, BoardService클래스 안세서 지정
	private static final int PAGE_LIMIT = 6;
	// 한 페이지에 보여줄 글 갯수
	private static final int BLOCK_LIMIT = 6;
	// 한 페이지에 보여줄 페이지 번호 갯수 (상수)
	
	// 게시글 목록조회
	public ModelAndView bList(int page) {
		
		
		
		PAGE paging = new PAGE();
		
		// 게시글 조회
		int listCount = dao.bListCount();
		
		
		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;
	
		
		int maxPage = (int) (Math.ceil((double)listCount / PAGE_LIMIT));
		int startPage = (((int)(Math.ceil((double)page / BLOCK_LIMIT))) -1 ) * BLOCK_LIMIT +1;
		int endPage = startPage + BLOCK_LIMIT -1;
		
		// 오류방지
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		List<BOARD> boardList = dao.bList(paging);
		
		mav.addObject("boardList",boardList);
		mav.addObject("paging",paging);
		mav.setViewName("B_List");
		System.out.println("boardList"+boardList);
		
		
		List<BOARD> boardList2 = dao.bList2();
		mav.addObject("boardList2",boardList2);
		mav.setViewName("B_List");
		System.out.println("boardList2"+boardList2);
		
		
		 List<BOARD> boardList3 = dao.bList3();
		  mav.addObject("boardList3",boardList3); 
		  mav.setViewName("B_List");
		
		  
		
		 
		 
		
		return mav;
	}
	
	// 메소드 밖, BoardService클래스 안세서 지정
		private static final int PAGE_LIMIT1 = 6;
		// 한 페이지에 보여줄 글 갯수
		private static final int BLOCK_LIMIT1 = 6;
		// 한 페이지에 보여줄 페이지 번호 갯수 (상수)
	
	// 커뮤니티 글 목록

	public ModelAndView cList(int page) {
		
		
		PAGE paging = new PAGE();
		int listCount = dao.cListCount();
		
		int startRow = (page - 1) * PAGE_LIMIT1 + 1;
		int endRow = page * PAGE_LIMIT1;
	
		
		int maxPage = (int) (Math.ceil((double)listCount / PAGE_LIMIT1));
		int startPage = (((int)(Math.ceil((double)page / BLOCK_LIMIT1))) -1 ) * BLOCK_LIMIT1 +1;
		int endPage = startPage + BLOCK_LIMIT1 -1;
		
		// 오류방지
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		
		List<BOARD> boardList = dao.cList(paging);
		
		mav.addObject("boardList",boardList);
		mav.addObject("paging",paging);
		mav.setViewName("C_List");
		
		return mav;
	}
	
	
	// 글 작성하기
	public ModelAndView bWrite(BOARD board) throws IllegalStateException, IOException {
		// 파일 이름 불러오기
				MultipartFile bFile = board.getBFile();
				String bFileName = bFile.getOriginalFilename();
				
				String savePath = "C:/Users/com/Desktop/프로젝트/LAST/src/main/webapp/resources/file/"
						+ bFileName;
		
		int i = Integer.parseInt(board.getTKind());
		
		board.setTKind1(i);
		System.out.println(board);
		LocalDate now = LocalDate.now();

		
		board.setBDate(now);
		
		// 업로드 한 파일이 있을 경우 
				if(!bFile.isEmpty()) {
					board.setBFileName(bFileName);
					bFile.transferTo(new File(savePath));
				}
				
		
		int result = dao.bWrite(board);
		
		
		if(result>0) {
			mav.setViewName("redirect:/B_list");
		} else {
			mav.setViewName("index");		
		}
		
				
		return mav;
	}


	public ModelAndView bView(int page, int BNo) {
		BOARD board = dao.bView(BNo);
		String MEmail = dao.mEMail(board.getBWriter());
		
		session.setAttribute("mail", MEmail);
		mav.addObject("view", board);
		mav.addObject("page", page);
		mav.setViewName("B_View");
		return mav;
	}
	

	List<COMMENT> commentList = new ArrayList<COMMENT>();
	public List<COMMENT> dList(int CBNo) {
		commentList = dao.dList(CBNo);
		return commentList;
	}

	public List<COMMENT> dWrite(COMMENT comment) {
		List<COMMENT> commentList = null;
		int result = dao.dWrite(comment);
		
		if(result>0) {
			commentList = dao.dList(comment.getCBNo());
		} else {
			commentList = null;
		}
		
		return commentList;
	}

	public List<COMMENT> dDelete(COMMENT comment) {
		List<COMMENT> commentList = null;
		int result = dao.dDelete(comment);
		
		if(result>0) { 
			commentList = dao.dList(comment.getCBNo());
		} else {
			commentList = null;
		}
		
		return commentList;
	}


	public ModelAndView cView(int page, int BNo) {
		BOARD board = dao.cView(BNo);

		mav.addObject("view", board);
		mav.addObject("page", page);
		mav.setViewName("C_View");
		return mav;
	}
	
	public ModelAndView bModiForm(int page, int BNo, String mId) {
		BOARD board = dao.bModiForm(BNo);
		System.out.println("수정 service mid : "+mId);
		System.out.println(board.getBWriter());
		
		
		if(mId.equals(board.getBWriter())) {
		mav.addObject("modify", board);
		mav.addObject("page", page);
		mav.setViewName("B_Modify");
		} else {
			
			mav.setViewName("index");
			
		}
		return mav;
	}

	public ModelAndView bModify(int page, BOARD board) throws IllegalStateException, IOException {

		// 파일 이름 불러오기
		MultipartFile bFile = board.getBFile();
		String bFileName = bFile.getOriginalFilename();

		String savePath = "C:/Users/com/Desktop/프로젝트/LAST/src/main/webapp/resources/file/"
				+ bFileName;
		
		// 업로드 한 파일이 있을 경우
		if (!bFile.isEmpty()) {
			bFile.transferTo(new File(savePath));
		}

		// bFileName을 board객체에 추가하기
		board.setBFileName(bFileName);

		// dao로 갈 때는 page정보를 넘기지 않고, board정보만 넘긴다!
		int result = dao.bModify(board);

		if (result > 0) {
			mav.setViewName("redirect:/B_view?BNo="+board.getBNo()+"&page="+page);
		} else {
			mav.setViewName("redirect:/B_list?page="+page);
		}

		return mav;
	}

	
	//수정페이지 이동
	public ModelAndView cModiForm(int page, int BNo,String mId) {
			BOARD board = dao.bModiForm(BNo);

			if(mId.equals(board.getBWriter())) {
				mav.addObject("modify", board);
				mav.addObject("page", page);
				mav.setViewName("C_Modify");
				} else {
					
					mav.setViewName("index");
					
				}
			return mav;
		}

	// 일반 게시글 수정 서비스
		public ModelAndView cModify(int page, BOARD board) throws IllegalStateException, IOException {
			// 파일 이름 불러오기
					MultipartFile bFile = board.getBFile();
					String bFileName = bFile.getOriginalFilename();

					String savePath = "C:/Users/com/Desktop/프로젝트/LAST/src/main/webapp/resources/file/"
							+ bFileName;
					
					// 업로드 한 파일이 있을 경우
					if (!bFile.isEmpty()) {
						bFile.transferTo(new File(savePath));
					}

					board.setBPrice(0);
					// bFileName을 board객체에 추가하기
					board.setBFileName(bFileName);

					board.setTKind1(0);
					
					System.out.println("C_modify : "+board);
					// dao로 갈 때는 page정보를 넘기지 않고, board정보만 넘긴다!
					int result = dao.bModify(board);

					if (result > 0) {
						mav.setViewName("redirect:/C_view?BNo="+board.getBNo()+"&page="+page);
					} else {
						mav.setViewName("redirect:/C_list?page="+page);
					}

					return mav;
		}
		
		
		
	public ModelAndView bDelete(int page, int BNo) {
		int result = dao.bDelete(BNo);
		
		if(result>0) {
			mav.setViewName("redirect:/B_list?page="+page);
		} else {
			mav.setViewName("index");
		}
		
		return mav;
	}


	public ModelAndView cSearch(String selectVal, String keyword) {
	List<BOARD> sList = dao.cSearch(selectVal, keyword);
		
		mav.addObject("sList", sList);
		mav.setViewName("CS_List");

		return mav;
	}
	
	// 게시글검색
		public ModelAndView bSearch(String selectVal, String keyword) {
			List<BOARD> sList = dao.bSearch(selectVal, keyword);
			
			mav.addObject("sList", sList);
			mav.setViewName("BS_List");
			
			return mav;
		}
		
		// 메소드 밖, BoardService클래스 안세서 지정
				private static final int PAGE_LIMIT2 = 6;
				// 한 페이지에 보여줄 글 갯수
				private static final int BLOCK_LIMIT2 = 6;
				// 한 페이지에 보여줄 페이지 번호 갯수 (상수)
				
				// 게시글 목록조회
				public ModelAndView bsList(int page) {
					
					
					
					PAGE paging = new PAGE();
					
					// 게시글 조회
					int listCount = dao.bsListCount();
					
					
					int startRow = (page - 1) * PAGE_LIMIT2 + 1;
					int endRow = page * PAGE_LIMIT2;
				
					
					int maxPage = (int) (Math.ceil((double)listCount / PAGE_LIMIT2));
					int startPage = (((int)(Math.ceil((double)page / BLOCK_LIMIT2))) -1 ) * BLOCK_LIMIT2 +1;
					int endPage = startPage + BLOCK_LIMIT2 -1;
					
					// 오류방지
					if(endPage > maxPage) {
						endPage = maxPage;
					}
					
					paging.setPage(page);
					paging.setStartRow(startRow);
					paging.setEndRow(endRow);
					paging.setMaxPage(maxPage);
					paging.setStartPage(startPage);
					paging.setEndPage(endPage);
					
					List<BOARD> sList = dao.bsList(paging);
					
					mav.addObject("sList",sList);
					mav.addObject("paging",paging);
					mav.setViewName("BS_List");
					System.out.println("sList"+sList);
					
					return mav;
				}


	public ModelAndView b1List(int page) {
		PAGE paging = new PAGE();
		
		// 게시글 조회
		int listCount = dao.b1ListCount();
		
		
		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;
	
		
		int maxPage = (int) (Math.ceil((double)listCount / PAGE_LIMIT));
		int startPage = (((int)(Math.ceil((double)page / BLOCK_LIMIT))) -1 ) * BLOCK_LIMIT +1;
		int endPage = startPage + BLOCK_LIMIT -1;
		
		// 오류방지
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		List<BOARD> board1List1 = dao.b1List(paging);
		
		mav.addObject("board1List1",board1List1);
		mav.addObject("paging",paging);
		mav.setViewName("B1_List");
	
		
		
		List<BOARD> board1List2 = dao.b1List2();
		mav.addObject("board1List2",board1List2);
		mav.setViewName("B1_List");
	
		
		
		 List<BOARD> board1List3 = dao.b1List3();
		  mav.addObject("board1List3",board1List3); 
		  mav.setViewName("B1_List");
		
		  
		
		 
		 
		
		return mav;
	}
	
	
	public ModelAndView b2List(int page) {
		PAGE paging = new PAGE();
		
		// 게시글 조회
		int listCount = dao.b2ListCount();
		
		
		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;
	
		
		int maxPage = (int) (Math.ceil((double)listCount / PAGE_LIMIT));
		int startPage = (((int)(Math.ceil((double)page / BLOCK_LIMIT))) -1 ) * BLOCK_LIMIT +1;
		int endPage = startPage + BLOCK_LIMIT -1;
		
		// 오류방지
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		List<BOARD> board2List1 = dao.b2List(paging);
		
		mav.addObject("board2List1",board2List1);
		mav.addObject("paging",paging);
		mav.setViewName("B2_List");
	
		
		
		List<BOARD> board2List2 = dao.b2List2();
		mav.addObject("board2List2",board2List2);
		mav.setViewName("B2_List");
	
		
		
		 List<BOARD> board2List3 = dao.b2List3();
		  mav.addObject("board2List3",board2List3); 
		  mav.setViewName("B2_List");
		
		  
		
		 
		 
		
		return mav;
	}

	
	public ModelAndView b3List(int page) {
		PAGE paging = new PAGE();
		
		// 게시글 조회
		int listCount = dao.b3ListCount();
		
		
		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;
	
		
		int maxPage = (int) (Math.ceil((double)listCount / PAGE_LIMIT));
		int startPage = (((int)(Math.ceil((double)page / BLOCK_LIMIT))) -1 ) * BLOCK_LIMIT +1;
		int endPage = startPage + BLOCK_LIMIT -1;
		
		// 오류방지
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		List<BOARD> board3List1 = dao.b3List(paging);
		
		mav.addObject("board3List1",board3List1);
		mav.addObject("paging",paging);
		mav.setViewName("B3_List");
	
		
		
		List<BOARD> board3List2 = dao.b3List2();
		mav.addObject("board3List2",board3List2);
		mav.setViewName("B3_List");
	
		
		
		 List<BOARD> board3List3 = dao.b3List3();
		  mav.addObject("board3List3",board3List3); 
		  mav.setViewName("B3_List");
		
		  
		
		 
		 
		
		return mav;
	}
	
	public ModelAndView b4List(int page) {
		PAGE paging = new PAGE();
		
		// 게시글 조회
		int listCount = dao.b4ListCount();
		
		
		int startRow = (page - 1) * PAGE_LIMIT + 1;
		int endRow = page * PAGE_LIMIT;
	
		
		int maxPage = (int) (Math.ceil((double)listCount / PAGE_LIMIT));
		int startPage = (((int)(Math.ceil((double)page / BLOCK_LIMIT))) -1 ) * BLOCK_LIMIT +1;
		int endPage = startPage + BLOCK_LIMIT -1;
		
		// 오류방지
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		
		List<BOARD> board4List1 = dao.b4List(paging);
		
		mav.addObject("board4List1",board4List1);
		mav.addObject("paging",paging);
		mav.setViewName("B4_List");
	
		
		
		List<BOARD> board4List2 = dao.b4List2();
		mav.addObject("board4List2",board4List2);
		mav.setViewName("B4_List");
	
		
		
		 List<BOARD> board4List3 = dao.b4List3();
		  mav.addObject("board4List3",board4List3); 
		  mav.setViewName("B4_List");
		
		  
		
		 
		 
		
		return mav;
	}

	//C_write
		public ModelAndView cWrite(BOARD board) throws IllegalStateException, IOException {
			// 파일 이름 불러오기
					MultipartFile bFile = board.getBFile();
					String bFileName = bFile.getOriginalFilename();
					String savePath = "C:/Users/com/Desktop/프로젝트/LAST/src/main/webapp/resources/file/"
							+ bFileName;
			
			int i = Integer.parseInt(board.getTKind());
			
			board.setTKind1(i);
			System.out.println(board);
			LocalDate now = LocalDate.now();

			
			board.setBDate(now);
			
			// 업로드 한 파일이 있을 경우 
					if(!bFile.isEmpty()) {
						board.setBFileName(bFileName);
						bFile.transferTo(new File(savePath));
					}
					
			
			int result = dao.cWrite(board);
			
			
			if(result>0) {
				mav.setViewName("redirect:/C_list");
			} else {
				mav.setViewName("index");		
			}
			
					
			return mav;
		}


		public ModelAndView mbList(String MId) {
			
			System.out.println("BWriter : " + MId);
			List<BOARD> mbList = dao.mbList(MId);
			
			
			System.out.println("mbList" + mbList);
			
			mav.addObject("list",mbList);
			mav.setViewName("MB_List");
			
			return mav;
		}


		public ModelAndView cDelete(int page, int BNo) {
			int result = dao.bDelete(BNo);
			
			if(result>0) {
				mav.setViewName("redirect:/C_list?page="+page);
			} else {
				mav.setViewName("index");
			}
			
			
			return mav;
		}



	
	



}
