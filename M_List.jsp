<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html lang="zxx">

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
									<li><a href="M_logout">Logout</a></li>
								</ul>
							</div>
	
						</div>
					</div>
					</c:when>
					
					
		 <c:when test="${not empty sessionScope.loginId}">
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



	<!-- 회원목록 -->
    <section class="breadcrumb-section set-bg" data-setbg="resources/img/xx.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>회원목록</h2>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
	
    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <!-- <th class="shoping__product">아이디</th> -->
                                    <th>아이디</th>
                                    <th>이름</th>
                                    <th>이메일</th>
                                    <th></th>
                                </tr>
                            </thead>
                            
		
								<c:forEach var="list" items="${memberList}">
                            <tbody>
                               <tr>
                                    <td><a href="M_view?MId=${list.MId}&page=${paging.page}">${list.MId}</a></td>
                                    <td>${list.MName}</td>
                                    <td>${list.MEmail}</td> 
                                    <td><a href="M_delete2?MId=${list.MId}&page=${page}"><span class="icon_close"></span></a></td>
                               
                  
                                    
                            </tbody> 
                      	</c:forEach>
                            
                        </table>
                        
                        
    <!-- 페이징 처리 -->
	<!-- 이전 -->
	<div style="text-align:center;">
	<c:if test = "${paging.page <= 1}">[이전]</c:if>
	<c:if test = "${paging.page > 1}">
		<a href="M_list?page=${paging.page-1}">[이전]</a> 
	</c:if>

	<!-- [현재(숫자)] 페이지 처리 -->
	<c:forEach var = "i" begin="${paging.startPage}" end="${paging.endPage }" step="1">
	<c:choose>
		<c:when test="${i eq paging.page }">
			${i}
		</c:when>
		
		<c:otherwise>
			<a href="M_list?page=${i}">${i}</a>
		</c:otherwise>

	</c:choose>
</c:forEach>

<!-- [다음] 페이지 처리 : 현제 페이지 에서 + 1 페이지-->
<c:if test = "${paging.page >= paging.maxPage}">[다음]</c:if>
<c:if test = "${paging.page < paging.maxPage}">
	<a href="M_list?page=${paging.page + 1}">[다음]</a> 
</c:if>
</div>


                    </div>
                </div>
            </div>
       
            </div>
        </div>
    </section>
    <!-- 회원목록 끝 -->

    <!-- 하단 시작 -->
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