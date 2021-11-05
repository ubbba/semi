<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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
                    <nav class="header__menu" style="text-align:center; margin-top: 20px;">
                        <ul>
                            <li><a href="./index.html">Home</a></li>
                            <li class="active"><a href="./B_list">Shop</a></li>
                            <li><a href="./C_list">Community</a></li>
                            <li><a href="./B_writeForm">Write</a></li>
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
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="resources/img/xx.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>판매 커뮤니티</h2>
                        <div class="breadcrumb__option">
                            <!-- <a href="./index.html">Home</a> -->
                            <span>스포츠</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5">
                    <div class="blog__sidebar">
                        <div class="blog__sidebar__search">
                            <form action="#">
                        
                            </form>
                        </div>
                        
                        	
                        	
                        	
                      <div class="sidebar__item">
                            <div class="latest-product__text">
                            
                                <h4>★인기상품★</h4>
                               <div class="latest-product__slider owl-carousel">
                             
                               
                             <!--    <div class="latest-prdouct__slider__item"> -->
                                <c:forEach var="list3" items="${board4List3}">
                                       <div class="latest-prdouct__slider__item">
                                  
                                      
                                        <a href="#" class="latest-product__item">
                                            <div class="latest-product__item__pic">
                                                <img src="resources/img/${list3.BFileName}" alt="">
                                            </div>
                                            <div class="latest-product__item__text">
                                                <h6><strong>${list3.BTitle}</strong></h6>
                                                	♥${list3.BHit}
                                                <span>${list3.BWriter}</span>
                                            </div>
                                        </a>
                                        </div>
                                        </c:forEach>
                        
                                </div>
                            </div>
                        </div>
                        
                        <hr/>	
                        <br/><br/>

                        
                        <div class="blog__sidebar__item">
                            <h4>★최신 판매 글★</h4>
                             <div class="blog__sidebar__recent">
                            
                             <c:forEach var="list2" items="${board4List2}">
                             
                                <a href="#" class="blog__sidebar__recent__item">
                                    <div class="blog__sidebar__recent__item__pic">
                                        <img src="resources/img/${list2.BFileName}" width=100 height=70>
                                    </div>
                                    <div class="blog__sidebar__recent__item__text">
                                        <h6>${list2.BTitle}<br />${list2.BWriter}</h6>
                                        <span>${list2.BDate}</span>
                                    </div>
                                </a>
                             </c:forEach>
                             <hr/>
                                 
                            </div>
                        </div>

                        </div></div>
                        
                        
                <!-- 판매글 목록  -->
                 
                 <div class="col-lg-8 col-md-7">     
                 <div class="row">  
                        
              			<c:forEach var="list" items="${board4List1}">
                       <div class="col-lg-6 col-md-6 col-sm-6"> 
                 		  <div class="blog__item">
                				<div class="blog__item__pic">
                				
                                    <img src="resources/img/${list.BFileName}" 	width=400 height=258>
                                </div>                            
                                <div class="blog__item__text">
                                    <ul>
                                    	<li><i class="fa fa-comment-o"></i>${list.BWriter}</li>
                                        <li><i class="fa fa-calendar-o"></i>${list.BDate}</li>
                                        <li>♥${list.BHit}</li>
                                    </ul>
                                    <h5><a href="#">${list.BTitle}</a></h5>
                              
                                 <a href="B_view?BNo=${list.BNo}&page=${paging.page}" class="blog__btn">READ MORE <span class="arrow_right"></span></a>           
                                 
                          </div>                                             
                     </div> 
                 	 </div>    
                 	 </c:forEach>  

                         <!-- 판매글 목록 종료  -->
                         
                         <!-- 페이징 리스트 -->
                         <div class="col-lg-12">
                          <div class="product__pagination blog__pagination">
                         
                        <!-- 이전 -->
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<c:if test = "${paging.page <= 1}"><a><i class="fa fa-long-arrow-left"></i></a></c:if>
							<c:if test = "${paging.page > 1}">
								<a href="B4_list?page=${paging.page-1}"><i class="fa fa-long-arrow-left"></i></a> 
							</c:if>

						<!-- [현재(숫자)] 페이지 처리 -->
							<c:forEach var = "i" begin="${paging.startPage}" end="${paging.endPage }" step="1">
								<c:choose>
									<c:when test="${i eq paging.page }">
										<a>${i}</a>
								</c:when>
		
							<c:otherwise>
									<a href="B4_list?page=${i}">${i}</a>
							</c:otherwise>

							</c:choose>
							</c:forEach>

						<!-- [다음] 페이지 처리 : 현제 페이지 에서 + 1 페이지-->
							<c:if test = "${paging.page >= paging.maxPage}"><a><i class="fa fa-long-arrow-right"></i></a></c:if>
								<c:if test = "${paging.page < paging.maxPage}">
								<a href="B4_list?page=${paging.page + 1}"><i class="fa fa-long-arrow-right"></i></a> 
								</c:if>
                         </div>
                        </div>
                        

                        
                    </div>
                </div>
   				</div>
        </div>
          
    </section>
    <!-- Blog Section End -->

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