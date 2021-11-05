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
    <link rel="stylesheet" href="resources/css/table.css" type="text/css">

	<style type="text/css">
	.cmt_write_box{
		padding: 12px 12px12px;
   		background: #fafafa;
    	border-top: 2px;
		solid #3b4890;
	}
	
	.f1{
		float:left;
	}
	.cmt_txt_cont{
		float:right;
	}
	.cmt_write{
		position: relative;
	}
	.cmt_cont_bottom{
		margin-top: :8px;
	}
	.fr{
		float : right;
	}
	
	</style>
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
                        <a href="./index.html"><img src="resources/img/콕콕.jpg" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6" style="margin-top: 20px;">
                    <nav class="header__menu" style="text-align:center;">
                        <ul>
                            <li><a href="./index">Home</a></li>
                            <li><a href="./B_list">Shop</a></li>
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
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                           <div class="hero__search__phone">
                            
						 
						 
						 <button class="site-btn" style="width: 120px; height: 53px;"onclick="location.href='C_modiForm?BNo=${view.BNo}&page=${page}&MId=${sessionScope.loginId}'">글 수정</button>
				
						 
						  <a style="color:white;">&nbps;&nbps;</a>
                            <div class="hero__search__phone__text">
                             		 <c:if test="${view.BWriter eq sessionScope.loginId}">
						 <button class="site-btn" style="width: 110px; height: 53px;"onclick="location.href='C_delete?BNo=${view.BNo}&page=${page}'">글 삭제</button>
						 </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Blog Details Hero Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="resources/img/xx.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>게시글 상세보기</h2>
                          
                            
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Hero End -->

    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
  
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5 order-md-1 order-2">
                    <div class="blog__sidebar" style="border-right-style: solid; border-right-width: 1px;">
                       <!--  <div class="blog__sidebar__search">
                            <form action="#">
                                <input type="text" placeholder="Search...">
                                <button type="submit"><span class="icon_search"></span></button>
                            </form>
                        </div> -->
                        
                        <!-- <div class="blog__sidebar__item">
                            <div class="hero__categories">
                            
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>판매글 카테고리</span>
						</div>
						
						<ul>
							<li><a href="B_writeForm">전자기기</a></li>
							<li><a href="#">의류</a></li>
							<li><a href="#">액세서리</a></li>
							<li><a href="#">이</a></li>
						</ul>
					</div>
                        </div> -->
                        
                        <div class="blog__sidebar__item">
                            
                            <div class="blog__sidebar__item">
                            <h4>★최신 게시글★</h4>
                             <div class="blog__sidebar__recent">
                            
                             <c:forEach var="list2" items="${boardList2}">
                             
                                <a href="#" class="blog__sidebar__recent__item">
                                    <div class="blog__sidebar__recent__item__pic">
                                        <img src="resources/img/${list2.BFileName}" width=200 height=200>
                                    </div>
                                    <div class="blog__sidebar__recent__item__text">
                                        <h6>${list2.BTitle}<br />${list2.BWriter}</h6>
                                        <span>${list2.BDate}</span>
                                    </div>
                                </a>
                             </c:forEach>
                            
                                 
                            </div>
                        </div>
                        </div>
                        
                    </div>
                </div>
                
                
                <div class="col-lg-8 col-md-7 order-md-1 order-1">
                <h3>제목 : ${view.BTitle}</h3>
                  
                <p>작성자 : ${view.BWriter} &nbsp; | &nbsp; 날짜 : ${view.BDate} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
                 조회수 : ${view.BHit}  </p>
              
                <hr/>
                    <div class="blog__details__text">
                  
                        <img src="resources/img/${view.BFileName}" alt="" style="width: 500px;">
                        
                        <div> ${view.BContent}</div>
                   
	

	
	
	<hr/>
	
	<p><strong>댓글 작성(로그인 후 이용해주세요.)</strong></p>
	<div class="cmt_write_box">
		<div class="f1"><div> </div></div>
			<c:if test="${not empty sessionScope.loginId}">
		<div class="cmt_txt_cont">
			<div class="cmt_write">
			<textarea rows="5" cols="100" placeholder="댓글을 입력해주세요." id="CContent"></textarea>
				<div class="cmt_cont_bottom">
				<div class="fr"><button id="cmtBtn" class="primary-btn" style="float:right;">등록</button></div>
				
				</div>
			</div>
		
		</div>	
		</c:if>
	</div>
	<%-- <c:if test="${not empty sessionScope.loginId }">
		<div style="margin:0 auto;">
			<textarea rows="2" cols="60" id="CContent"></textarea>
			<button id="cmtBtn" class="primary-btn" style="float:right;">댓글 입력</button>
		</div>
		</c:if> --%>
		
		
		<div id="commentArea" style="width:100%; height:420px; overflow:auto;"></div>
	
                    </div>
                    <div class="blog__details__content">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="blog__details__author">
                                    <div class="blog__details__author__pic">
                                        
                                    </div>
                                    
                                </div>
                            </div>
                        
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->

    <!-- Related Blog Section Begin -->
    <section class="related-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title related-blog-title">
                        
                    </div>
                </div>
            </div>
            <!-- <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="resources/img/blog/blog-1.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="#">Cooking tips make cooking simple</a></h5>
                            <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="resources/img/blog/blog-2.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="#">6 ways to prepare breakfast for 30</a></h5>
                            <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="resources/img/blog/blog-3.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="#">Visit the clean farm in the US</a></h5>
                            <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                        </div>
                    </div>
                </div>
            </div> -->
        </div> 
    </section>
    <!-- Related Blog Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="resources/img/logo.png" alt=""></a>
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
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<!-- <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> -->
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <!-- <div class="footer__copyright__payment"><img src="resources/img/payment-item.png" alt=""></div> -->
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




</body>

<script type="text/javascript" src="resources/js/jquery3.6.0.js"></script>
	<script type="text/javascript">
	// M_View.jsp 로딩시 댓글 목록 조회
	$(document).ready(function(){
		let CBNo = ${view.BNo};
		let CWrite = "${sessionScope.loginId}";
		
		$.ajax({
			type : "POST" ,
			url : "D_list" ,
			data : {"CBNo" : CBNo} ,
			dataType : "json",
			success : function(result){
				commentList(result);
			},
			error : function(){
				alert("댓글 리스트 불러오기 실패!");
			}
		});
	
		
		$("#cmtBtn").click(function(){
			let CWriter =  '${sessionScope.loginId}';
			let CContent = $("#CContent").val();
			let CBNo = ${view.BNo};
			
			$.ajax({
				type : "POST" , 
				url : "D_write" ,
				data : { "CWriter": CWriter,
						 "CContent": CContent,
						 "CBNo": CBNo
					} ,
				dataType : "json" ,
						// 입력을 하자마자 commentList을 새로고침? 하기 위해서
				success : function(result){
					commentList(result);
					$("#CContent").val("");
				},
				error : function(){
					alert("댓글 입력 실패!");
				}
			});
		});
		
	});

	function commentList(result){
		let output = "";
		// 스프링에 입력하는 값을 추가
		
		output +="<table class='table table-striped' style= 'margin-top:8px; min-width: 20rem; width=100%'; border=0; cellspacing=0; cellpadding=0;'>";
		output +="<tr>";
		output +="<th style='width:20%'>작성자</th>";
		output +="<th style='width:65%'>내용</th>";
		output +="<th style='width:15%'>삭제</th>";
		output +="</tr>";
		
		
		for(var i in result){
			
			output +="<tr>";
			output +="<td>"+result[i].CWriter+"</td>";
			output +="<td>"+result[i].CContent+"</td>";
			output +="<td><button onclick='cmtDelete("+result[i].CNo+")'>삭제</button></td>";
			output +="</tr>";
		}
		
		output +="</table>";
	 
		
		$("#commentArea").html(output);
		
		
	}
	
	function cmtDelete(CNo){
		
		$.ajax({
			type : "GET",
			url : "D_delete" ,
			data : {
				"CNo" : CNo,
				"CBNo" : ${view.BNo}
			} , 
			dataType : "json",
			success : function(result){
				commentList(result);
			},
			error :function(){
				alert("댓글 삭제 실패!")
			}
			
			
		});
	}
	</script>

</html>