<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
		
	<table border = 1>
	<%
	int i = 0;
	for ( i = 0; i <=9;i++)
	{
		out.print("<tr>");
		out.print("<td>" + i +" " + "</td>" + "<td>" + ((i%2==0)? " 짝수입니다." : " 홀수입니다.")+"</td>");	
		out.print("</tr>");
	}
	%>
	</table>

		
	</body>
</html>