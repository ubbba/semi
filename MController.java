package com.icia.two.controller;

import java.io.IOException;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.icia.two.dto.MEMBER;
import com.icia.two.service.MService;

@Controller
public class MController {
	@Autowired
	private MService msvc;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	JavaMailSender mailsender;
	
	private ModelAndView mav = new ModelAndView();
	
//초기 실행화면 : 프로젝트 실행화면
@RequestMapping(value="/", method=RequestMethod.GET) 
public String index() {
return "index";

}


@RequestMapping(value="/index", method=RequestMethod.GET) 
public String index1() {
return "index";

}

@RequestMapping(value="/blog", method=RequestMethod.GET) 
public String blog() {
return "blog";

}

@RequestMapping(value="/blog-details", method=RequestMethod.GET) 
public String blogdetails() {
return "blog-details";

}

@RequestMapping(value="/checkout", method=RequestMethod.GET) 
public String checkout() {
return "checkout";

}

@RequestMapping(value="/contact", method=RequestMethod.GET) 
public String contact() {
return "contact";

}

@RequestMapping(value="/main", method=RequestMethod.GET) 
public String main() {
return "main";

}

@RequestMapping(value="/shop-details", method=RequestMethod.GET) 
public String shopdetails() {
return "shop-details";

}

@RequestMapping(value="/shop-grid", method=RequestMethod.GET) 
public String shopgrid() {
return "shop-grid";

}

@RequestMapping(value="/shoping-cart", method=RequestMethod.GET) 
public String shopingcart() {
return "shoping-cart";

}

// M_joinForm
@RequestMapping(value = "/M_joinForm", method = RequestMethod.GET)
public String mJoinForm() {
	return "M_Join";
}

//M_join : 회원가입
	@RequestMapping(value = "/M_Join", method = RequestMethod.POST)
	public ModelAndView mJoin(@ModelAttribute MEMBER member) throws IllegalStateException, IOException {

		mav = msvc.mJoin(member);

		return mav;
	}

	// A_idOverlap : 아이디 중복 검사
		@RequestMapping(value = "/A_idOverlap", method = RequestMethod.POST)
		public @ResponseBody String idOverlap(@RequestParam("MId") String MId) {
			
			String result = msvc.idOverlap(MId);
	
			return result;
		}
		
		
		
	// A_cofirmEmail : 이메일 인증번호 발송 (이메일 인증 정규식 검사)
		@RequestMapping(value = "/A_emailConfirm", method = RequestMethod.GET)
		public @ResponseBody String emailConfirm(@RequestParam("MEmail") String MEmail) {
			
			String emailKey = emailKey(false, 8);
			
			MimeMessage mail = mailsender.createMimeMessage();
			
			String massage = "<h2>안녕하세요. 인천일보 아카데미 입니다.</h2>"
							+ "<br/><p>인증번호는 [" + emailKey + "] 입니다.</p>"
							+ "<p>인증번호를 인증번호 입력란에 입력해주세요</p>"
							+ "(혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다.)";
			
			try {
				mail.setSubject("[본인인증] 인천일보 아카데미 인증메일입니다.", "utf-8");
				mail.setText(massage, "utf-8", "html");
				mail.addRecipient(RecipientType.TO, new InternetAddress(MEmail));
				mailsender.send(mail);
				
			} catch (MessagingException e) {
				e.printStackTrace();
			}
			
			return emailKey;
		}
		
	// 난수를 이용한 키 생성
		private boolean lowerCheck;
		private int size;
		
		public String emailKey(boolean lowerCheck, int size) {
			this.lowerCheck = lowerCheck;
			this.size = size;
			
			return init();
		}
		
	// 난수를 만드는 메소드
		private String init() {
			Random ran = new Random();
			StringBuffer sb = new StringBuffer();
			
			int num = 0;
			
			do {
				num = ran.nextInt(75) + 48;
				
				if((num >= 48 && num <= 57) || (num >= 65 && num <= 90) || (num >= 97 && num <= 122)) {
					sb.append((char)num);
				} else {
					continue;
				}
			
				
			} while(sb.length() < size);
			
			if(lowerCheck) {
				return sb.toString().toLowerCase();
			}
			
			return sb.toString();
		}

	//M_loginForm : 로그인 페이지 이동
		@RequestMapping(value="/M_loginForm", method=RequestMethod.GET) 
		public String mLoginForm() {
			return "M_Login";
			
		}
		
	// M_login : 로그인
		@RequestMapping(value="/M_login", method=RequestMethod.POST) 
		public ModelAndView mLogin(@ModelAttribute MEMBER member) {
		
			mav = msvc.mLogin(member);
			
			return mav;
		}

	// M_logout : 로그아웃
		@RequestMapping(value="/M_logout", method=RequestMethod.GET) 
		public String mLogout() {
			session.invalidate();
			return "index";	
		}
		
	// M_list : 회원목록
		@RequestMapping(value="/M_list", method=RequestMethod.GET) 
		public ModelAndView mList(@RequestParam(value="page",required=false, defaultValue="1") int page) {
			
			// 오류방지용
			if(page<=0) {
				page =1;
			}
			
			mav = msvc.mList(page);
			return mav;
		}

	// M_view : 회원 상세보기
		@RequestMapping(value = "/M_view", method = RequestMethod.GET)
		public ModelAndView mView(@RequestParam(value="page", required=false, defaultValue="1") int page, @RequestParam("MId") String MId)  {
			mav = msvc.mView(page, MId);
			return mav;
		}
		
	// M_delete : 일반 회원 탈퇴
		@RequestMapping(value = "/M_delete", method = RequestMethod.GET)
		public ModelAndView mDelete(@RequestParam(value="page", required=false, defaultValue="1") int page, @RequestParam("MId") String MId)  {
			
			mav = msvc.mDelete(page, MId);
			System.out.println("Mav : "+ mav);
			return mav;
		}
		
		// M_delete2 : 어드민 회원 삭제
		@RequestMapping(value = "/M_delete2", method = RequestMethod.GET)
		public ModelAndView mDelete2(@RequestParam(value="page", required=false, defaultValue="1") int page, @RequestParam("MId") String MId)  {
					
			mav = msvc.mDelete2(page, MId);
			System.out.println("Mav : "+ mav);
			return mav;
				}	
		
	// M_modiForm : 회원 수정 페이지 이름
		@RequestMapping(value = "/M_modiForm", method = RequestMethod.GET)
		public ModelAndView mModiForm(@RequestParam(value="page", required=false, defaultValue="1") int page, @RequestParam("MId") String MId)  {
			mav = msvc.mModiForm(page, MId);
			return mav;
		}

	// M_modify : 회원 수정
		@RequestMapping(value = "/M_modify", method = RequestMethod.POST)
		public ModelAndView mModify(@RequestParam(value="page", required=false, defaultValue="1") int page, @ModelAttribute MEMBER member) throws IllegalStateException, IOException {
			mav = msvc.mModify(page, member);
			return mav;
		}

}
