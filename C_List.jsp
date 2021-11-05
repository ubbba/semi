<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">
    <title>마켓콕콕</title>
 <style type="text/css">

                    /*디자인은 큰틀부터 디자인하자.*/
                    #list {
                           width:1000px;
                           border:1px solid #D2FFD2;
                           border-collapse:collapse;
                           text-align:center;
                           margin: opx auto;
                    }
                    #list td, #list th{
                           font-size:20px;
                           border:1px solid #D2FFD2;
                           padding:10px;
                    }

                    #list th{
                           background-color:#47FF9C;
                    }

                    #list .td1 {
                           width:3px;
                           text-align:center;
                    }
                    #list .td2 {
                           width:300px;
                           text-align:center;
                    }

                    #list .td3 {
                           width:50px;
                           text-align:center;
                    }

                    #list .td4 {
                           width:50px;
                           text-align:center;
                    }
                    #list .td5 {
                           width:5px;
                           text-align:center;
                    }
                    #list .altRow{
                           background-color:#e0f0b5;
                    }
                    
                    .search {
	font-size: 14px;
	color: #ffffff;
	font-weight: 800;
	text-transform: uppercase;
	display: inline-block;
	padding: 13px 30px 12px;
	background: #47FF9C;
	border: none;
}

             </style>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/style.css" type="text/css">
    <link rel="stylesheet" href="resources/css/table.css" type="text/css">
</head>

<body>
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
									<li><a href="MB_List?MId=${sessionScope.loginId}">MyList</a></li>
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
									<li><a href="MB_List?MId=${sessionScope.loginId}">MyList</a></li>
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
                    <div class="header__logo">
                        <a href="./index.html"><img src="resources/img/콕.jpg" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu" style="text-align:center;">
                        <ul>
                            <li><a href="./index.html">Home</a></li>
                            <li><a href="./B_list">Shop</a></li>
                            <li class="active"><a href="./C_list">Community</a></li>
                            <li><a href="./C_writeForm">Write</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <!-- <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li> -->
                        </ul>
                     
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
			<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>카테고리</span>
						</div>
						
						<ul>
							<li><a href="B_list">전체보기</a></li>
							<li><a href="B1_list">전자기기</a></li>
							<li><a href="B2_list">의류</a></li>
							<li><a href="B3_list">액세서리</a></li>
							<li><a href="B4_list">스포츠</a></li>
						</ul>
					</div>
				</div>
                
                
                <!-- 카테고리 검색창 -->
                <div class="col-lg-9" style="width:500">
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
    </section>
    
    <section class="breadcrumb-section set-bg" data-setbg="resources/img/xx.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>커뮤니티 게시판</h2>
        
                    </div>
                </div>
            </div>
        </div>
    </section>
    

    <!-- 중앙부분 시작 -->
    <section class="blog spad">
        <div class="container">
            


	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
	<table id="list" style="margin:0px auto;">
		<%-- <caption>게시글 목록 : 페이지 ${paging.page}</caption> --%>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		
		
                    
                    
		<c:forEach var="boardList" items="${boardList}">
		<tr >
			<td>${boardList.BNo}</td>
			<td><a href="C_view?BNo=${boardList.BNo}&page=${paging.page}">${boardList.BTitle}</a></td>
			<td>${boardList.BWriter}</td>
			<td>${boardList.BDate}</td>
			<td>${boardList.BHit}</td>
		</tr>
		</c:forEach>
		
	
	</table>
	
		<!-- 페이징 처리 -->
		<div style="text-align:center;">
		
	
	
	<!-- [이전] -->
	<c:if test="${paging.page <= 1}">[이전]</c:if>
	<c:if test="${paging.page > 1}"><a href="C_list?page=${paging.page-1}">[이전]</a></c:if>
	
	
	<!-- [숫자] -->
	<c:forEach begin="${paging.startPage}" end="${paging.endPage}" step="1" var="i">
		<c:choose>
		<c:when test="${paging.page eq i}">${i}</c:when>
		
		
	<c:otherwise><a href="C_list?page=${i}">${i}</a></c:otherwise>
		</c:choose>
	</c:forEach>
	
	
	<!-- [다음] -->
	<c:if test="${paging.page >= paging.maxPage}">[다음]</c:if>
	<c:if test="${paging.page < paging.maxPage}"><a href="C_list?page=${paging.page+1}">[다음]</a></c:if>
</div>



		
		<form action="C_search">
		<div>
		<div style="margin:0px; text-align:center;" >
		
		<select name="selectVal">
	
			<option value="BWriter">작성자</option>
			<option value="BTitle">제목</option>
			<option value="BContent">내용</option>
		
		</select>
		
		<input type="text" name="keyword">
		<input type="submit" class="search" value="검색">
	
		
			</div> 
			</div>
		</form>
				
		
	</div>
</section>
	

        <!-- 로그인 부분 끝 -->


	
   	<!-- 하단 시작 -->
	<footer class="footer spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="footer__about">
						<div class="footer__about__logo">
							<a href="./index"><img src="resources/img/콕.jpg" alt=""></a>
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
	<!-- 하단 끝 -->

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





</html>