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
<title>심플한 PC구매 다나온!</title>
</head>
<body>
	<%
		String userID = null;
		if( session.getAttribute("userID") != null  ){
			userID = (String)session.getAttribute("userID");
		}
		if ( payment.getUserID() == null || payment.getShippingAddress() == null || payment.getBetterAddress() == null 
			|| payment.getSenderName() == null || payment.getReceiverName() == null || payment.getPrice() == null ) {
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			PaymentDAO paymentDAO = new PaymentDAO();
			int result = paymentDAO.purchase(payment);
			
			session.setAttribute("userID",payment.getUserID());
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'main.jsp'");
			script.println("</script>");
			
			
		}
			
	%>
</body>
</html>