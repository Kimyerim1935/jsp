<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>구구단 출력</title>
	</head>
	<body>
	<h1>구구단 출력</h1>
	
	<table border = 1>
	<%

	for (int i = 0; i <=9;i++)
	{	
		out.print("<tr>");
		for (int j=2; j<=9; j++)
		{
			
			if(i==0)
			{
				out.print("<td>" + j +"단" + "</td>");
			}
			else
			{
				out.print("<td>"+ j + "*" + i + "=" + i*j + "</td>");	
			}
		}
		out.print("</tr>");
		
	}
	
	
	
	
	
	%>	
	</table>
	</body>
</html>