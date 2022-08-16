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
				<form method="post" action="paymentAction.jsp">
					<a href="main.jsp">DANAON </a>
					<h3 style="text-align: center;"> 상품 결제 </h3>
					<div class="form-group">
						<div style="text-align:left"><label>결제 상품명</label></div>
						  <div>
                          		<image src="images/game2.png"></image>
                         </div>
					</div>
					<div class="form-group">
						<div style="text-align:left"><label>아이디</label></div>
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20"> 	
					</div>		
					<div class="form-group">
						<div style="text-align:left"><label>주소</label></div>
						<input type="text" class="form-control" placeholder="주소" name="shippingAddress" maxlength="100"> 	
					</div>
					<div class="form-group">
						<div style="text-align:left"><label>상세 주소</label></div>
						<input type="text" class="form-control" placeholder="상세 주소" name="betterAddress" maxlength="50">	
					</div>
					<div class="form-group">
						<div style="text-align:left"><label>보내는분</label></div>
						<input type="text" class="form-control" placeholder="이름" name="sender" maxlength="10">	<!-- name은 변수명-->  
					</div>
					<div class="form-group">
						<div style="text-align:left"><label>받는분</label></div>
						<input type="text" class="form-control" placeholder="이름" name="receiver" maxlength="10">	<!-- name은 변수명-->  
					</div>
					<div class="form-group" style="text-align : left;">
						<div style="text-align:left"><label>은행명</label></div>
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active">
								<input type="radio" name="bankName" autocomplete="off" value="우리" checked> 우리
							</label>
							<label class="btn btn-primary">
								<input type="radio" name="bankName" autocomplete="off" value="농협" checked> 농협
							</label>
							<label class="btn btn-primary active">
								<input type="radio" name="bankName" autocomplete="off" value="KB국민" checked> KB국민
							</label>
							<label class="btn btn-primary">
								<input type="radio" name="bankName" autocomplete="off" value="신한" checked> 신한
							</label>
							<label class="btn btn-primary active">
								<input type="radio" name="bankName" autocomplete="off" value="BC" checked> BC
							</label>
							<label class="btn btn-primary">
								<input type="radio" name="bankName" autocomplete="off" value="제일" checked> 제일
							</label>
						</div>
					</div>
					<div class="form-group">
						<div style="text-align:left"><label>결제금액 확인</label></div>
						<input type="text" class="form-control" placeholder="XXXXXXXX원" name="Price" maxlength="20">	
					</div>
					<input type="submit" class="btn btn-primary form-control" value="결제" style="margin-bottom:140px; ">					
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html> 