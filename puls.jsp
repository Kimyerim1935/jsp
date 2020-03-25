<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
	<h1>10,3의 오칙 연산 결과</h1><br/>
	<%
	int a = 10;
	int b = 3;
	
	int plus = a+b;
	int minus = a-b;
	int multi = a*b;
	int di = a/b;
	int na = a%b;
	
	%>
	
	<h2>
	10과 3의 덧셈 결과는 [<%out.print(plus);%>]입니다.<br/>	
	10과 3의 뺄셈 결과는 [<%out.print(minus);%>]입니다.<br/>	
	10과 3의 곱셈 결과는 [<%out.print(multi);%>]입니다.<br/>	
	10과 3의 나눗셈 결과는 [<%out.print(di);%>]입니다.<br/>	
	10과 3의 나머지 연산 결과는 [<%out.print(na);%>]입니다.	
	</h3>
			
	</body>
</html>