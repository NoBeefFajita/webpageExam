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
	request.setCharacterEncoding("UTF-8");
	String feedback = request.getParameter("feedback");
	
	feedback = feedback.replace("\n", "<br>");
	feedback = feedback.replace("<", "%lt");
	feedback = feedback.replace(">", "%gt");
	feedback = feedback.replace("	", "&nbsp;&nbsp;");
	
%>
</body>
</html>