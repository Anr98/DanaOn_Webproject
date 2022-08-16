 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name ="viewport" content="width=device-width" initial-scale="1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/logcustom.css">
	<link rel="stylesheet" href="css/purcustom.css">
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
			<li><h3 style="text-align: center;"> 상품 결제</h3><li>
		</ul>
		
	</div>
	
	<div class="container">
		<div class="col-lg-3"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="purchaseAction.jsp">
					
					<div class="form-group">
						<input type="text" class="form-control" placeholder="ID" name="userID" maxlength="20"> 	
					</div>
					<div class="form-group">
						<div style="text-align:left"><label>주소</label></div>
						<input type="text" class="form-control" placeholder="주소" name="shippingAddress" maxlength="100">	
					</div>
					<div class="form-group">
						<div style="text-align:left"><label>상세주소</label></div>
						<input type="text" class="form-control" placeholder="상세주소" name="betterAddress" maxlength="50">	<!-- name 변수명-->  
					</div>
					<div class="form-group">
						<div style="text-align:left"><label>보내는 분</label></div>
						<input type="text" class="form-control" placeholder="보내는 분" name="senderName" maxlength="20"> 	
					</div>
					<div class="form-group">
						<div style="text-align:left"><label>받는 분</label></div>
						<input type="text" class="form-control" placeholder="받는 분" name="receiverName" maxlength="20">	
					</div>
					<div class="form-group" style="text-align : center;">
						<div style="text-align:left"><label>카드 선택</label></div>
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active">
								<input type="radio" name="bankName" autocomplete="off" value="우리" checked>우리
							</label>
							<label class="btn btn-primary">
								<input type="radio" name="bankName" autocomplete="off" value="신한" checked>신한
							</label>
							<label class="btn btn-primary active">
								<input type="radio" name="bankName" autocomplete="off" value="kB" checked>KB
							</label>
							<label class="btn btn-primary">
								<input type="radio" name="bankName" autocomplete="off" value="제일" checked>제일
							</label>
							<label class="btn btn-primary active">
								<input type="radio" name="bankName" autocomplete="off" value="무통장" checked>무통장
							</label>
						</div>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="price" name="price" maxlength="20">	
					</div>
					<div class="button_tool">
						<input type="submit" class="btn btn-primary form-control" value="상품 결제">
					</div>
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html> 