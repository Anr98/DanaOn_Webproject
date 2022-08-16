 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="payment.PaymentDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="payment" class="payment.Payment" scope="page"/>
<jsp:setProperty name="payment" property="userID"/>
<jsp:setProperty name="payment" property="shippingAddress"/>
<jsp:setProperty name="payment" property="betterAddress"/>
<jsp:setProperty name="payment" property="senderName"/>
<jsp:setProperty name="payment" property="receiverName"/>
<jsp:setProperty name="payment" property="bankName"/>
<jsp:setProperty name="payment" property="price"/>   
    
    
    
    
 <%@ page import="java.io.PrintWriter" %>
 <%@ page import="bbs.BbsDAO" %>
 <%@ page import="bbs.Bbs" %>
 <%@ page import="java.util.ArrayList" %>
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
				
					<a href="main.jsp">DANAON </a>
					<h3 style="text-align: center;">마이페이지</h3>
					
				    				<%
							BbsDAO bbsDAO = new BbsDAO();
							ArrayList<Bbs> list = bbsDAO.getList(pageNumber); 
							for(int i = 0; i < list.size(); i++){ 
						%>						
						<table>
						<tbody>
						<%
							BbsDAO bbsDAO = new BbsDAO();
							ArrayList<Bbs> list = bbsDAO.getList(pageNumber); 
							for(int i = 0; i < list.size(); i++){ 
						%>						
						<tr>
							<td><%= list.get(i).getBbsID() %></td>
							<td><a href="view.jsp?bbsID=<%= list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle().replaceAll(" ","&nbsp").replaceAll("<","&lt;").replaceAll(">","&gt; ").replaceAll("\n","<br>")%></a></td>   
							 <!--조심. 주소창이므로 공백x-->
							<td><%= list.get(i).getUserID() %></td>
							<td><%= list.get(i).getBbsDate().substring(0,11) + list.get(i).getBbsDate().substring(11,13)+"시"+ list.get(i).getBbsDate().substring(14,16)+"분" %></td> 
						</tr>
							
						<% 
							}	
						%>	
				</tbody>
				</table>
						<% 
							}	
						%>			
				
					
				
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html> 