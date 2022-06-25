<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String userid = request.getParameter("user_id");
	String pw = request.getParameter("pw");
	String message = "";
	
	if( userid.equals("kim") && pw.equals("1234")) { message = "김철수님 환영합니다"; }
	else { message = "아이디 또는 비밀번호가 일치하지 않습니다"; }
	%>
	
	<%= message %>
</body>
</html>