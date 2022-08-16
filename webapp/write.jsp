 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name ="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/writecustom.css">
	<title>심플한 PC구매 다나온!</title>
</head>
<body>
	<%
		String userID=null;
	if (session.getAttribute("userID")!=null);
		userID =(String)session.getAttribute("userID");
	%>
	 <div class="intro_bg">
	 		<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				</button>
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
		 </div>
	<div class="container" >
		<div class="row">
			<form method="post" action="writeAction.jsp">
				<table class="table table-striped" style="text-align : center ; border : 1px solid #dddddd" >
					<thead>
						<tr>
							<th  colspan="2" style="background-color : #eeeeee ; text-align:center;'">다나온 게시판 글쓰기 </th>
				
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height:550px;"></textarea></td>
						</tr>			
					</tbody>
				</table>
				<input type="submit" class="btn btn-primary pull-right"  value="글쓰기">
				
			</form>
					
		</div>
	</div>
	
	
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html> 