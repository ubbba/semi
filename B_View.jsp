<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
    <style>
    .wrapper-scroll{
    	overflow-x : auto;
    }
    .tg-scroll{
    	min-width: 40rem;
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
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>카테고리</span>
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
                        
                        <div class="hero__search__phone">
                     
 		<button class="site-btn" style="width: 120px; height: 53px;"onclick="location.href='B_modiForm?BNo=${view.BNo}&page=${page}&MId=${sessionScope.loginId}'">글 수정</button>
 	
 		
                          <a style="color:white;">&nbps;&nbps;</a>
						  
                            <div class="hero__search__phone__text">
                                	<c:if test="${view.BWriter eq sessionScope.loginId}">
  <button class="site-btn" style="width: 110px; height: 53px;"onclick="location.href='B_delete?BNo=${view.BNo}&page=${page}'">글 삭제</button>                        
  </c:if>
                            </div>
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
                        <h2>판매글 정보입니다.</h2>
                        <div class="breadcrumb__option">
                            <p></p>
                            <p></p>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item" style="border: double;">
                            <img class="product__details__pic__item--large" style="width: 50px;" src="resources/img/${view.BFileName}" alt="">
                        </div>
                        
                       <!--  <div class="product__details__pic__slider owl-carousel">
                            <img data-imgbigurl="resources/img/product/details/product-details-2.jpg"
                                src="resources/img/product/details/thumb-1.jpg" alt="">
                            <img data-imgbigurl="resources/img/product/details/product-details-3.jpg"
                                src="resources/img/product/details/thumb-2.jpg" alt="">
                            <img data-imgbigurl="resources/img/product/details/product-details-5.jpg"
                                src="resources/img/product/details/thumb-3.jpg" alt="">
                            <img data-imgbigurl="resources/img/product/details/product-details-4.jpg"
                                src="resources/img/product/details/thumb-4.jpg" alt="">
                        </div> -->
                        
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3>글 제목 : 『${view.BTitle}』</h3>
                       
                        <div class="product__details__rating">
                            <!-- <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i> -->
                            
                            <span>조회수 : ${view.BHit} &nbsp; | &nbsp; ${view.BDate} </span>
                        </div>
                        
                       <div class="product__details__price">가격 :  <fmt:formatNumber value="${view.BPrice}" pattern="#,##0" />원</div>

                         <hr/>
                        <h4>내용1 : ${view.BContent}</h4>
                         <hr/>
                       <!--  <div class="product__details__quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                    				<input type="text" value="1">
                                </div> 
                            </div>
                        </div> -->
                        
                       
                        <a href="#" data-toggle="modal" style="margin-top: 20px;" data-target="#moaModal" class="primary-btn">구매하기</a>
                          

                        
                        <a href="MB_list?BNo=${view.BNo}" class="heart-icon"><span class="icon_heart_alt"></span></a>
                        
                    </div>
                </div>
                
                <!--  -->
                
                <!-- alert창 -->
                <div class="modal fade" id="moaModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  					  <div class="modal-dialog" role="document">
    					  <div class="modal-content">
       				 <div class="modal-header">
        			  <h5 class="modal-title" id="exampleModalLabel">판매자 정보입니다.</h5>
         			 <button class="close" type="button" data-dismiss="modal" aria-label="Close">
           			 <span aria-hidden="true">x</span>
         			 </button>
    			    </div>
        
      			  <form action="C_Make" method="GET" enctype="multipart/form-data">
      					 <div class="modal-body">
	    		    		<P>작성자 : ${view.BWriter}</P>
	    		    		<P>이메일 : ${sessionScope.mail}</P>
	    		    		<P>가격 : ${view.BPrice}원</P>
	    		    		
       					 </div>
      	  
       				 <div class="modal-footer">
      			<input type="button" class="btn btn-primary"  value="확인">
        		 <!--  <button class="btn btn-primary" type="button" data-dismiss="modal">전송</button> -->
       			 </div>
      		  </form>
        
     			 </div>
   				 </div>
  						</div>
  						
  				<!-- alert창 -->
  				
                <!--  -->
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">Comment</a> 
                            </li>

                            <!-- <li class="nav-item">
                                 <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">??</a> 
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">comment <span>(1)</span></a> 
                            </li> -->
                        </ul>
                        <div class="tab-content">
                             <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                  <div class="product__details__tab__desc">
                                
                                    <h6>댓글 작성(로그인 후 이용해주세요.)</h6>
	<div class="cmt_write_box">
		<div class="f1"><div> </div></div>
			
			<c:if test="${not empty sessionScope.loginId}">
		<div class="cmt_txt_cont">
			<div class="cmt_write">
			<textarea rows="5" cols="155" placeholder="댓글을 입력해주세요." id="CContent"></textarea>
				<div class="cmt_cont_bottom">
				<div class="fr" style="margin-bottom: 5px;"><button id="cmtBtn" class="primary-btn" style="float:right;">등록</button></div>
				
				</div>
			</div>
		
		</div>	
		</c:if>
	</div>
                <div id="commentArea" style="width:100%; height:300px; overflow:auto"></div>                      
                                
							<%-- 	<div id="commentArea"></div>	
			
									
                                    <p>
			<c:if test="${not empty sessionScope.loginId }">
			<div style="margin:0 auto;">
			
			<textarea rows="2" cols="60" id="CContent"></textarea>
			
			<button id="cmtBtn" class="primary-btn" style="float:right;">댓글 입력</button>
			
			</div>
			
			</c:if>
			</p> --%>
                                </div>
                            </div> 
                            
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <%-- <h6>Products Infomation</h6>
                                    <p>
			<div id="commentArea"></div>	
									</p>
                                    <p>
			<c:if test="${not empty sessionScope.loginId }">
			<div style="margin:0 auto;">
			<textarea rows="2" cols="60" id="CContent"></textarea>
			<button id="cmtBtn" class="primary-btn" style="float:right;">댓글 입력</button>
			</div>
			</c:if>
			</p> --%>
                                </div>
                            </div>
                            
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Products Infomation</h6>
                                    <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.
                                        Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus.
                                        Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam
                                        sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo
                                        eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat.
                                        Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Praesent
                                        sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac
                                        diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante
                                        ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                                        Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.
                                        Proin eget tortor risus.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->

    <!-- Related Product Section Begin -->
   <!--  <section class="related-product">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title related__product__title">
                        <h2>Related Product</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="resources/img/product/product-1.jpg">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="resources/img/product/product-2.jpg">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="resources/img/product/product-3.jpg">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="resources/img/product/product-7.jpg">
                            <ul class="product__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> -->
    <!-- Related Product Section End -->

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

  <script type="text/javascript" src="resources/js/jquery3.6.0.js"></script>
	<script type="text/javascript">
	
	// B_View.jsp페이지 로딩시 댓글 목록 조회
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
		output +="<hr/>";
		
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
		

		
		$(".heart-icon").click(function() {
			alert("상품을 위시리스트에 추가하였습니다.");
		});

	</script>

</html>