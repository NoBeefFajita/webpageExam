<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>salary_result2</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String job = request.getParameter("job");
	int basic = Integer.parseInt(request.getParameter("basic"));
	int bonus = Integer.parseInt(request.getParameter("bonus"));
	//연봉 총액
	int total = basic * 12 + bonus;

	//세액 3%
	int tax = (int) (total * 0.03);
	int money = total - tax;//실수령액
	%>


	<!-- String.format("출력형식", 값)
%d 정수, %f 실수, %s 문자열, %c 문자
%,d 천단위컴머가 표시된 정수
 -->
	이름 : <%=name%>
	<br> 직급 : <%=job%>
	<br> 기본급 : <%=String.format("%,d", basic)%>
	<br> 보너스 : <%=String.format("%,d", bonus)%>
	<br> 총액 : <%=String.format("%,d", total)%>
	<br> 세액 : <%=String.format("%,d", tax)%>
	<br> 실수령액 : <%=String.format("%,d", money)%>
	<br>

</body>
</html>