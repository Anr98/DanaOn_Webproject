 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name ="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/custommain1.css">
	<title>심플한 PC구매 다나온!</title>
	<style>
	a{
		text-decoration : none;
	}
	</style>
	
</head>
<body>
	
	<%
		String userID=null;
	if (session.getAttribute("userID")!=null);
		userID =(String)session.getAttribute("userID");
	%>

	  <div class="wrap">
                      <div class="intro_bg">
                      		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href= "main.jsp">다나온 PC 웹</a>
		</div>
                            <div class="header" id="link_header">
                                   <ul class="nav">
                                          
                                          <li class="active"> <a href="main.jsp">메인</a></li> 
										  <li> <a href="maininfo.jsp">PC 추천 정보</a></li>
										  
                                          <li><a href="bbs.jsp">PC 견적 게시판</a></li>
                                   </ul>
                            </div>
                            
                            
                            
            <%
			   if (userID == null){
			%>
				<div class="manu-bar">
					<ul>	
						<li><a href="#" data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">접속하기<span class="caret"></span></a>
							<div class="sub_menu">
								<ul >
									<li><a href="login.jsp">로그인</a></li>
									<li><a href="join.jsp">회원가입</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>	
			<%
			   }else{   
			%>	
				<div class="manu-bar">
					<ul>	
						<li><a href="#" data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">회원관리<span class="caret"></span></a>
							<div class="sub_menu">
								<ul >
									<li><a href="logoutAction.jsp">로그아웃</a></li>
									<li><a href="myPage.jsp">마이페이지</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			<%
			   }
			%>			            
                     </div>
                     <!--intro end-->
                    
                     <div class="main_bg" id="link_about">
                            <div class="maintext_01" id="link_service">
	                            	<div class="hue">
	                                	<div class="image_01">
	                                   		<image src="images/computer1.jpg"></image>
	                                    </div>
	                                    <div class="text_01">
	                                          <h2>다나온 다이렉트PC [인텔 i3-12100F/RTX3050/16G]</h2>
	                                           <div class="text_02">
		                                       
		                                          <br>사은품   2년출장AS+키보드+마우스+멀티탭+마우스패드+멀티타이+리커버리 USB
		                                          <br>
		                                          <br>구매해택  이달의 신용카드 | 다나온 마일리지 플러스
		                                          <br>
		                                          <br>배송 방법  배송방법무료배송 | 퀵서비스 | 직접수령 | 안전배송 
		                                          <br>
		                                          <hr>
		                                          핀매가         625,000 
		                                          <br>
		                                          <br>사양 변경  			   0건
		                                          <br>추가 금액 			   0원 
		                                          <br>회원 할인 금액     -25000원
		                                          <br>재고유무  			50대 이상	 
		                                          <hr>
		                                          		총 합계 금액 :  		600,000 
		                                          <br>
		                                          <br>
	                                        </div>
	                                          <ul class="cash_01">
		                                    	 <li><div><image src="images/login.png" href="purchase.jsp"></image></div>
			                                          	<a href="login.jsp" role="button">로그인</a></li>
		                                    	 <li>
		                                    	 		
			                                          <div><image src="images/89.svg" href="purchase.jsp"></image></div>
			                                          	<a href="purchase.jsp" role="button">결제하기</a>
			                                         
		                                   		 </li>
	                            			  </ul>
	                                          

	                                    </div>    
	                                    
			                   		</div> 
			                   	  
			                   		<ul class="mainContents">
	                                   <li>
	                                          <div >
	                                                 <image src="images/home_image.png"></image>
	                                          </div>
	                                          <div>가정용 PC</div>
	                                          <a href="maindetail.jsp" role="button">더보기</a>
	                                   </li>
	                                   <li>
	                                          <div><image src="images/office_image.png"></image></div>
	                                          <div>사무용 PC</div>
	                                          <a href="maindetail2.jsp" role="button">더보기</a>
	                                   </li>
	                                   <li>
	                                          <div><image src="images/best_image.png"></image></div>
	                                          <div>
	                                                 BEST 인기상품
	                                          </div>
	                                          <a href="maindetail3.jsp" role="button">더보기</a>
	                                   </li>
                            		</ul>
				                   
				                   
			                 </div>
                            
                            </div>
	
		
		
		
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html> 