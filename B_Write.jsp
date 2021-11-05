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
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">
</head>

<body>
<c:if test="${sessionScope.loginId==null}">
		<script>
			alert('로그인 후 이용하세요.');
			location.href = "index";
		</script>
	</c:if>

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

   

     <!-- 최상단 부분 시작 -->
	<header class="header">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<div class="header__top__left">

						</div>
					</div>
					
					    <c:choose>
					    
			<c:when test="${sessionScope.loginId eq 'admin'}">
					<div class="col-lg-6 col-md-6">
						<div class="header__top__right">

							<div class="header__top__right__language">
						
								<i class="fa fa-user"></i>
								<div>관리자 계정</div>
								<span class="arrow_carrot-down"></span>
								<ul>
									<li><a href="M_list">List</a></li>	
									<li><a href="M_view?MId=${sessionScope.loginId}">Info</a></li>
									<li><a href="M_list">MemberList</a></li>
									
									<li><a href="M_logout">Logout</a></li>
								</ul>
							</div>
	
						</div>
					</div>
					</c:when>
					
					
		 <c:when test="${sessionScope.loginId != null}">
					<div class="col-lg-6 col-md-6">
						<div class="header__top__right">

							<div class="header__top__right__language">
						
								<i class="fa fa-user"></i>
								<div>${sessionScope.loginId}</div>
								<span class="arrow_carrot-down"></span>
								<ul>
									<li><a href="MB_List.jsp">MyShop</a></li>
									<li><a href="M_view?MId=${sessionScope.loginId}">Info</a></li>
									<li><a href="M_logout">Logout</a></li>
								</ul>
							</div>
	
						</div>
					</div>
					</c:when>
					
		<c:otherwise>
					<div class="col-lg-6 col-md-6">
						<div class="header__top__right">

							<div class="header__top__right__language">
								<i class="fa fa-user"></i>
								<div>Login/Join</div>
								<span class="arrow_carrot-down"></span>
								<ul>	
									<li><a href="M_loginForm">Login</a></li>
									<li><a href="M_joinForm">Join</a></li>
								</ul>
							</div>
	
						</div>
					</div>
					</c:otherwise>
					
					
					    </c:choose>
				</div>
			</div>
		</div>
		
		

		
		
		<div class="container">
			<div class="row">
				<div class="col-lg-3">

				</div>
				<div class="col-lg-6">
				
					<div class="header__logo" style="text-align: center;">
						<a href="./index"><img src="resources/img/콕.jpg"alt=""></a>
					</div>
	

				</div>
			</div>
		</div>
	</header>
	
	<!-- 최상단 부분 끝 -->

    <!-- Hero Section Begin -->
    <!-- <section class="hero hero-normal">
<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>카테고리</span>
						</div>
						
						<ul>
							<li><a href="B_writeForm">전자기기</a></li>
							<li><a href="#">의류</a></li>
							<li><a href="#">액세서리</a></li>
							<li><a href="#">스포츠</a></li>
						</ul>
					</div>
				</div>
				
                
  				<div class="col-lg-9">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="#">
								
								<input type="text" placeholder="무엇이 필요하신가요?">
								<button type="submit" class="site-btn">검색</button>
							</form>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </section> -->
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
   <section class="breadcrumb-section set-bg" data-setbg="resources/img/xx.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>글 작성</h2>
                        <div class="breadcrumb__option">
                         
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    
                </div>
            </div>
            <div class="checkout__form">
                <h4>글작성</h4>
                <form action="B_Write" method="POST" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>작성자</p>
                                      ${sessionScope.loginId}
									<input type="hidden" name = "BWriter" value = "${sessionScope.loginId}">
                                    </div>
                                </div>
                            </div>
                            
                            <div class="checkout__input">
                                <p>제목<span>*</span></p>
                                <input type="text" name="BTitle">
                            </div>
                            
                            <div class="checkout__input">
                                <p>첨부파일<span>*</span></p>
                                <input type="file" name="BFile">
                            </div>
                            
                            <div>
                                <p>내용<span>*</span></p>
                                <textarea rows="20" cols="40" name="BContent"></textarea>
                            </div>
                            
                       		<div class="checkout__input">
                            	<p>게시글 종류<span>*</span></p>
                            		<label><input type="radio" name="TKind" value="0" onclick="div_OnOff(this.value,'con');"> 일반글</label>
      								<label><input type="radio" name="TKind" value="1" onclick="div_OnOff(this.value,'con');"> 거래글</label>
                            </div>
                            
                             <div class="checkout__input" id="con">
                                <p>가격<span>*</span></p>
                                <input type="text" name="BPrice">
                                
                                <br/> <br/> <br/>
                                
                                 <p>카테고리<span>*</span></p>
                                <select name="BCate">
                                <option value="1">전자기기</option>
                                <option value="2">의류</option>
                                <option value="3">액세서리</option>
                                <option value="4">스포츠</option>
                                </select>
                                <br/> <br/> <br/>
                            </div>
                            
                      

	
                             
                            <div class="col-lg-6"> 
                       		<div class="checkout__input">
								<input type="submit" value="작성">
				</div>
				</div>
                            </div>
                            </div>
                            </form>
                            
                       
                       
			</div>
                         
    </section>
    <!-- Checkout Section End -->

    <!-- Footer Section Begin -->
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
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="resources/js/jquery-3.3.1.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.nice-select.min.js"></script>
    <script src="resources/js/jquery-ui.min.js"></script>
    <script src="resources/js/jquery.slicknav.js"></script>
    <script src="resources/js/mixitup.min.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>
    <script src="resources/js/main.js"></script>
	<script>
	

	function div_OnOff(v,id){
	 // 라디오 버튼 value 값 조건 비교
	 if(v == "1"){
	  document.getElementById(id).style.display = ""; // 보여줌
	 }else{
	  document.getElementById(id).style.display = "none"; // 숨김
	 }
	}

	
	</script>
 

</body>

<script type="text/javascript" src="resources/js/jquery3.6.0.js"></script>
<script type="text/javascript">
</script>


</html>