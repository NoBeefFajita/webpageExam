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
// 기본 인코딩 iso- 8859-1 서유럽
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String age = request.getParameter("age");

int days = Integer.parseInt(age) * 365;

String gender = request.getParameter("gender");
gender = gender.equals("male")? "남성": "여성";
%>

이름: <%= name %> <br>
나이: <%= age %> <br>
성별: <%= gender %> <br>
살아온 날: <%= days %> <br>
</body>
</html>