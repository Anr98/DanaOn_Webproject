 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name ="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/custom2.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	
	<title>심플한 PC구매 다나온!</title>
	<style>
		a{
			text-decoration : none;
		}
		
		
		.container2 {
			width:200px;
			position : relative;
		
		}
		.click{ 
		
			background-color:#f85f73;
		
		}
		.click:hover{ 
		
			background-color:#B71C1C;
		
		}
		
		
		
		.click, .links{
			padding: 12px;
			font-size: 1.2em;
			border : none;
			outline : none;
			width :200px;
		}
		
		<script>
			let click = document.querySelector('.click');
			let list = document.querySelector('.list');
			click.addEventListener("click",()=>{
				list.classList.toggle('newlist');
			});
		</script>
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
					</ul>
				</div>
			</li>
			
			</ul>
		</div>
			
			<%
			   }
			%>			
                            <div class="intro_text">
                                   
                                   
                            </div>
                     </div>
                     <!--intro end-->
                     
                     <div class="main_bg" id="link_about">
                            <h1>DANAON</h1>
                            <h4>다나온 맞춤 가격대별 상품을 안내해 드립니다.</h4>
                            <div class="purpose_name">
                            	<a class="btn btn-primary btn-pull" href="maindetail.jsp" role="button">60 -80만원 대 추천 견적</a>
                            </div>
                            
                            <ul class="mainContents">
                                   <li>
                                          <div>
                                                 <image src="images/91.svg"></image>
                                          </div>
                                          <div>가정용 PC</div>
                                          <div class="contents0">웹서핑/영상 시청/문서 작업 멀티코어PC </div>
                                          
                                          <a class="btn btn-primary btn-pull" href="maindetail.jsp" role="button">MORE</a>
                                   </li>
                                   <li>
                                          <div><image src="images/88.svg"></image></div>
                                          <div>사무용 PC</div>
                                          <div class="contents1">
                                                 RTX0000탑재 사무에 최적화된 성능 x2세대 보드PC
                                          </div>
                                          <a class="btn btn-primary btn-pull" href="maindetail2.jsp" role="button">MORE</a>
                                   </li>
                                   <li>
                                          <div><image src="images/89.svg"></image></div>
                                          <div>
                                                 BEST 인기상품
                                          </div>
                                          <div class="contents2">
                                                 RTX최신버전 가장 많이 팔린 패키지 상품/특가 상품 3D작업기획	
                                          </div>
                                          <a class="btn btn-primary btn-pull" href="maindetail3.jsp" role="button">MORE</a>
                                   </li>
                            </ul>
                            <div class="purpose_name">
                            	<a class="btn btn-primary btn-pull" href="maindetail.jsp" role="button">90 -120만원 대 추천 견적</a>
                            </div>
                            <ul class="mainContents">
                                   <li>
                                          <div>
                                                 <image src="images/91.svg"></image>
                                          </div>
                                          <div>가정용 PC</div>
                                          <div class="contents0">웹서핑/영상 시청/문서 작업 멀티코어PC</div>
                                          <a class="btn btn-primary btn-pull" href="maindetail.jsp" role="button">MORE</a>
                                   </li>
                                   <li>
                                          <div><image src="images/88.svg"></image></div>
                                          <div>사무용 PC</div>
                                          <div class="contents1">
                                                 RTX0000탑재 사무에 최적화된 성능 x2세대 보드PC
                                          </div>
                                          <a class="btn btn-primary btn-pull" href="maindetail2.jsp" role="button">MORE</a>
                                   </li>
                                   <li>
                                          <div><image src="images/89.svg"></image></div>
                                          <div>
                                                 BEST 인기상품
                                          </div>
                                          <div class="contents2">
                                                 RTX최신버전 가장 많이 팔린 패키지 상품/특가 상품 3D작업기획
                                          </div>
                                       <a class="btn btn-primary btn-pull" href="maindetail3.jsp" role="button">MORE</a>
                                   </li>
                            </ul>
                            <div class="purpose_name">
                            	<a class="btn btn-primary btn-pull" href="maindetail.jsp" role="button">130만원 이상 대 추천 견적</a>
                            </div>
                            <ul class="mainContents">
                                   <li>
                                          <div>
                                                 <image src="images/91.svg"></image>
                                          </div>
                                          <div>가정용 PC</div>
                                          <div class="contents0">웹서핑/영상 시청/문서 작업 멀티코어PC</div>
                                        <a class="btn btn-primary btn-pull" href="maindetail.jsp" role="button">MORE</a>
                                   </li>
                                   <li>
                                          <div><image src="images/88.svg"></image></div>
                                          <div>사무용 PC</div>
                                          <div class="contents1">
                                                 RTX0000탑재 사무에 최적화된 성능 x2세대 보드PC
                                          </div>
                                        <a class="btn btn-primary btn-pull" href="maindetail2.jsp" role="button">MORE</a>
                                   </li>
                                   <li>
                                          <div><image src="images/89.svg"></image></div>
                                          <div>
                                                 BEST 인기상품
                                          </div>
                                          <div class="contents2">
                                                 RTX최신버전 가장 많이 팔린 패키지 상품/특가 상품 3D작업기획
                                          </div>
                                          <a class="btn btn-primary btn-pull" href="maindetail3.jsp" role="button">MORE</a>
                                   </li>
                            </ul>
                     </div>
                                  </div>
	
	
		
		
		
		
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html> 