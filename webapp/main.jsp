 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name ="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/custom.css">
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
			   }
			   else{   
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
                    
                            <div class="intro_text">
                                   <h1>당신이 원하던 컴퓨터</h1>
                                   
                            </div>
                     </div>
                     <!--intro end-->
                     <ul class="amount">
                            <li>
                                   <div>
                                          <div><h4>2022 상반기 판매량</h4></div>
                                          <div class="contents2">$ 128,012</div>
                                   </div>
                            </li>
                            <li>
                                   <div>
                                          <div><h4>이달의 PC 할인 평균</h4></div>
                                          <div class="contents2">98,126 원</div>
                                   </div>
                            </li>
                            <li>
                                   <div>
                                          <div><h4>누적 주문수</h4></div>
                                          <div class="contents2">100,000 +</div>
                                   </div>
                            </li>
                            <li>
                                   <div>
                                          <div><h4>고객 응답 건수</h4></div>
                                          <div class="contents2">57,183,546</div>
                                   </div>

                            </li>
                
                     </ul>
                     <div class="main_bg" id="link_about">
                            <h1>DANA ON</h1>
                            <ul class="mainContents">
                                   <li>
                                          <div>
                                                 <image src="images/game2.png"></image>
                                          </div>
                                          
                                          <div class="contents0">*고사양 게임도 가볍게</div>
                                          <a class="btn btn-primary btn-pull" href="maindetail.jsp" role="button">게임용 PC</a>
                                   </li>
                                   <li>
                                          <div><image src="images/officework2.png"></image></div>
                                          
                                          <div class="contents1">
                                             *웹 서핑 및 시원한 속도 
                                          </div>
                                          <a class="btn btn-primary btn-pull" href="maindetail2.jsp" role="button">사무용 PC</a>
                                   </li>
                                   <li>
                                          <div><image src="images/best2.png"></image></div>
                                          
                                          <div class="contents2">
                                                 *최고 인기 상품을 한눈에
                                          </div>
                                          <a class="btn btn-primary btn-pull" href="maindetail3.jsp" role="button">인기순 PC</a>
                                   </li>
                            </ul>
                     </div>
                     <div class="maintext_01" id="link_service">
                          
                            <div class="hue">
                                   <div class="image_01"><image src="images/submain.jpg"></image></div>
                                   <div class="text_01">
                                          <h2>작은 정성 하나가 모여</h2>
                                          고객님들의 삶의 일부가 됩니다. 
                                          <br>작은 부품 하나가 모여 하나의 제품이 탄생합니다.
                                          <br>저희 다나온에서는 작은 부품의 조립과 제작 과정에서도 
                                          <br>최선을 다하고 있습니다. 우리의 노력이 모여서
                                          <br>고객 분들의 삶의 일부가 된다는 것을 알기 때문입니다.
                                          <br>

                                          <br>불과 10년 전만 하더라도 이러한 인식은 많지 않았습니다. 
                                          <br>컴퓨터라 단지 일할때 쓰이는 단순 도구일뿐, 
                                          <br>그것에 정성을 들일 필요는 없다고 했습니다.  
                                          <br>이제 저희는 말합니다.우리 제품들은 고객님 삶의  
                                          <br>일부가 되었고.. 
                                          <br>
                                          <br>저희의 노력은 고객님들의 삶에 스며들게 되었으니  
                                          <br>소중하게 대해주어야 하지 않을까요? </div>
                            </div>
                     </div>
                     <div class="main3" >
                     	
                     	
                     	
                     
                     </div>
                </div>	
		
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html> 