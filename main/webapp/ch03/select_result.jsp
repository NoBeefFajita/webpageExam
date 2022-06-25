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
String cars = request.getParameter("cars");
String name = "";

switch(cars) {
case "bmw" :
	name = "BMW";
	break;
case "benz" :
	name = "Benz";
	break;
case "hyndai" :
	name = "현대";
	break;
case "kia" :
	name = "기아";
	break;
}
%>

자동차는 <%= name %>입니다.
</body>
</html>