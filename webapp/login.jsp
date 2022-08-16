 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name ="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/logcustom.css">
	<title>심플한 PC구매 다나온!</title>
</head>
<body>
	<nav class="navbar navbar-default">
		
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			
			
		 </div>
	</nav>
	<div class="head_text">
		<ul>
			<li> <a href="main.jsp">DANAON </a></li>
			<li><h3 style="text-align: center;"> 로그인</h3><li>
		</ul>
		
	</div>
	
	<div class="container">
		<div class="col-lg-3"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="loginAction.jsp">
					
					<div class="form-group">
						
						<input type="text" class="form-control" placeholder="ID" name="userID" maxlength="50"> 	
					</div>
					<div class="form-group">	
						<input type="password" class="form-control" placeholder="password" name="userPassword" maxlength="20">	
					</div>
					<div class="button_tool">
						<input type="submit" class="btn btn-primary form-control" value="로그인">
					</div>
				</form>
					<h6>또는</h6>

					<button><a href="join.jsp">회원가입</a></button>
					
						
					</div>
			</div>
			
		</div>
			
		<div class="col-lg-4"></div>
		
	</div>
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html> 