<!DOCTYPE html>
<html lang="zxx">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>마켓콕콕</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>


    <section class="breadcrumb-section set-bg" data-setbg="resources/img/xx.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>회원 수정</h2>
                        <div class="breadcrumb__option">
                         
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <!-- 회원 수정 -->
    <section class="checkout spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    
                </div>
            </div>
            <div class="checkout__form">
            
            
            
            
                 <h4>회원수정</h4>
                <form action="M_modify" method="POST" enctype="multipart/form-data" id="modiForm">
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>아이디<span>*</span></p>
                                        <strong>${modify.MId}</strong>
                                        <input type="hidden" name="MId" value="${modify.MId}">
                                      
                                    </div>
                                </div>
                            </div>
                            
                            <div class="checkout__input">
                                <p>패스워드<span>*</span></p>
                                <input type="password"  name="MPw" id="MPw" onkeyup="pwRegExp()">
								<span id="pwRegExp"></span>
								
                            </div>
                            
                            <div class="checkout__input">
                                <p>패스워드 확인<span>*</span></p>
                                <input type="password" id="checkPw" onkeyup="pwOverlap()">
								<span id="confirmMPw"></span>
                            </div>
                            
                            
                            <div class="checkout__input">
                                <p>이름<span>*</span></p>
                                <input type="text"  name="MName"  placeholder="${modify.MName}">
                               
                            </div>
                            
                            <div class="checkout__input">
                                <p>주소<span>*</span></p>
                                <input type="text" id="sample6_postcode" style="width: 150px; height:50px;"  placeholder="우편번호" name="addr1">
								<input type="button" onclick="sample6_execDaumPostcode()" style="width: 170px; height:50px;"  value="우편번호 찾기"><br>
								<input type="text" id="sample6_address" placeholder="주소" name="addr2"><br>
								<input type="text" id="sample6_detailAddress" placeholder="상세주소" name="addr3">
                            </div>
                            
                            
                            <div class="checkout__input">
                                <p>번호<span>*</span></p>
                                <input type="text" name="MPhone" placeholder="${modify.MPhone}">
                            </div>
                            
                            
                            <div class="checkout__input">
                                <p>이메일<span>*</span></p>
                                <input type="email" name="MEmail" id="MEmail" placeholder="${modify.MEmail}">
				<span id="emailConfirmText"><input type="button" value="인증" onclick="confirmEmail()"></span>
                            </div>
                            
                            
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>생년월일<span>*</span></p>
                                        <input type="date" name="MBirth">
                                    </div>
                                </div>
                                
                            </div>
                            </form>
                            
                       <div class="row">  
                       <div class="col-lg-6"> 
                       <div class="checkout__input">
				<input type="button" value="수정" onclick="mModi()">
				
				</div>
				</div>
			</div>
                         
    </section>
    <!-- 회원 수정 끝 -->

    <!-- 하단부 -->
  <footer class="footer spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="footer__about">
						<div class="footer__about__logo">
							<a href="./index"><img src="resources/img/콕.jpg"
								alt=""></a>
						</div>
						<ul>
							<li>Team: 일석이조</li>
							<li>Address: ICIA</li>
				
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
					<div class="footer__widget">
						<h6>Developers</h6>
						<ul>
							<li><a href="#">최우진</a></li>
							<li><a href="#">김현민</a></li>
							<li><a href="#">이준혁</a></li>
						</ul>
						<ul>
							<li><a href="#">차해성</a></li>
							<li><a href="#">이지영</a></li>
							<li><a href="#">유지영</a></li>
						</ul>
					</div>
				</div>
				

			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="footer__copyright">
						<div class="footer__copyright__text">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
			
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
	
					</div>
				</div>
			</div>
		</div>
	</footer>
    <!-- 하단부 끝 -->

    <!-- Js Plugins -->
    <script src="resources/js/jquery-3.3.1.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.nice-select.min.js"></script>
    <script src="resources/js/jquery-ui.min.js"></script>
    <script src="resources/js/jquery.slicknav.js"></script>
    <script src="resources/js/mixitup.min.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>
    <script src="resources/js/main.js"></script>

 

</body>

<script type="text/javascript" src="resources/js/jquery3.6.0.js"></script>
<script type="text/javascript">

//비밀번호 정규식
function pwRegExp(){
	let MPw = document.getElementById("MPw").value;
	let pwRegExp = document.getElementById("pwRegExp");
	let pwPass = false;
	
	let num = MPw.search(/[0-9]/g);
	let eng = MPw.search(/[a-z]/ig);
	let spe = MPw.search(/[`~!@#$%^&*|\\\'\";:\/?]/gi);
	
	
	// 1234 567!q
	if(MPw.length < 8 || MPw.length > 15){
		pwRegExp.style.color="#ff0000";
		pwRegExp.innerHTML = "8자리 ~ 15자리 이내로 입력해주세요!";
		
	} else if(MPw.search(/\s/) != -1) {
		pwRegExp.style.color="#ff0000";
		pwRegExp.innerHTML = "비밀번호는 공백 없이 입력해주세요!";
	} else if(num < 0 || eng < 0 || spe < 0) {
		pwRegExp.style.color="#ff0000";
		pwRegExp.innerHTML = "영문, 숫자, 특수문자를 혼합하여 입력해주세요!";
	} else {
		pwRegExp.style.color="#0000ff";
		pwRegExp.innerHTML = "적절한 비밀번호 입니다!";
		pwPass = true;
	}
	
	return pwPass;
}
//비밀번호 일치여부 확인
function pwOverlap(){
	let MPw = document.getElementById("MPw").value;
	let pwRegExp = document.getElementById("pwRegExp");
	
	let checkPw = document.getElementById("checkPw").value;
	let confirmMPw = document.getElementById("confirmMPw");
	
	let pwPass = false;
	
	pwRegExp.innerHTML = "";
	
	if(MPw==checkPw){
		confirmMPw.style.color = "#0000ff";
		confirmMPw.innerHTML = "비밀번호가 일치합니다!";
		pwPass = true;
		
	} else {
		confirmMPw.style.color = "#ff0000";
		confirmMPw.innerHTML = "비밀번호를 확인해주세요!";
	}
	return pwPass;
}
//이메일 인증
function confirmEmail() {
	let MEmail = document.getElementById("MEmail").value;
	let emailConfirmText = document.getElementById("emailConfirmText");
	
	
	$.ajax({
		type : "GET" ,
		url : "A_emailConfirm" ,
		data : {"MEmail" : MEmail} ,
		dataType : "text" ,
		success : function(data){
			alert("입력하신 이메일로 인증번호가 발송됐습니다!");
			// check2 : 전송한 키, emailKey : 입력한 키
			emailConfirmText.innerHTML = "<input type='hidden' id='check2' value='" + data + "'>"
									   + "<br/><input type='text' placeholder='인증번호 입력' id='emailKey'>"
									   + " <input type='button' value='확인' onclick='keyCheck()'>"
									   + "<br/><span id='check1'</span>";
		} ,
		error : function(){
			alert("인증번호 발송에 실패했습니다!");
		}
	});
	
}



// 인증번호 확인
function keyCheck(){
	let emailKey = document.getElementById("emailKey").value;
	let check2 = document.getElementById("check2").value;
	let check1 = document.getElementById("check1");
	
	let emailPass = false;
	
	if(emailKey==check2){
		check1.style.color = "#0000ff";
		check1.innerHTML = "인증번호가 일치합니다!";
		emailPass = true;
	} else {
		check1.style.color = "#ff0000";
		check1.innerHTML = "인증번호가 일치하지 않습니다!";
	}
	return emailPass;
}

//회원가입 버튼
function mModi(){
	console.log("아이디 체크 : " + idOverlap());
	console.log("비밀번호 체크1 : " + pwRegExp());
	console.log("비밀번호 체크2 : " + pwOverlap());
	console.log("이메일 체크 : " + keyCheck());
	
	if(!idOverlap()){
		alert("아이디 중복체크를 진행해주세요.");
	} else if(!pwRegExp()){
		alert("비밀번호를 규칙에 맞게 입력해주세요.");
	} else if(!pwOverlap()){
		alert("비밀번호가 일치하지 않습니다.");
	} else if(!keyCheck()){
		alert("이메일 인증을 진행해주세요.");
	} else {
		modiForm.submit();
	}
}

</script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}
</script>

</html>