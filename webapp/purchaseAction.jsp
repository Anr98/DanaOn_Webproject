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

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP게시판 웹사이트</title>
</head>
<body>
	<%
		if ( payment.getUserID() == null || payment.getShippingAddress() == null || payment.getBetterAddress() == null 
				|| payment.getSenderName() == null || payment.getReceiverName() == null || payment.getPrice() == null ) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력 없음.')");
			script.println("history.back()");
			script.println("</script>");
			
		}
				
		PaymentDAO paymentDAO = new PaymentDAO();
		int result = paymentDAO.purchase(payment);
		if (result == -1) {
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 존재하는 아이디 입니다. ')");
			script.println("history.back()");
			script.println("</script>");
		}else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href='main.jsp'");
			script.println("</script>");
		}
			
			
	%>
</body>
</html>