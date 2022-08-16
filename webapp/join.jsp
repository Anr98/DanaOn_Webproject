 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name ="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/joincustom.css">
	<title>심플한 PC구매 다나온!</title>
</head>
<body>
	<nav class="navbar navbar-default">	
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			
		 </div>
	</nav>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="joinAction.jsp">
					<a href="main.jsp">DANAON </a>
					<h3 style="text-align: center;"> 회원가입</h3>
					<div class="form-group">
						<div style="text-align:left"><label>아이디</label></div>
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20"> 	
					</div>
					<div class="form-group">
						<div style="text-align:left"><label>비밀번호</label></div>
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">	
					</div>
					<div class="form-group">
						<div style="text-align:left"><label>이름</label></div>
						<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="10">	<!-- name은 변수명-->  
					</div>
					<div class="form-group" style="text-align : left;">
						<div style="text-align:left"><label>성별</label></div>
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active">
								<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
							</label>
							<label class="btn btn-primary">
								<input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
							</label>
						</div>
					</div>
					<div class="form-group">
						<div style="text-align:left"><label>이메일</label></div>
						<input type="email" class="form-control" placeholder="******@danaon.com" name="userEmail" maxlength="20">	
					</div>
					<input type="submit" class="btn btn-primary form-control" value="회원가입">					
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html> 