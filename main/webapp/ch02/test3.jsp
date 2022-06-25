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
String name = "홍길동";
out.print("이름: " + name + "<br>");
%>
<!-- expression : 출력 용도의 코드 / 세미콜론 x-->
이름: <%= name %>
</body>
</html>