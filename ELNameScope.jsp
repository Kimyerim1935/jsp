<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	request.setAttribute("dataname","request.Attribute");
	application.setAttribute("dataname","application.Attribute");
%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>데이터 이름 사용</title>
	</head>
	<body>
		<h3>request 내장 객체의 dataname 속성값 : </h3>
		[<%=request.getAttribute("dataname") %>]<hr>
		<h3>application 내장객체의  dataname 속성값 : </h3>
		[<%=application.getAttribute("dataname") %>]<hr>
		<h3>EL에서 출력되는 dataname의 값</h3>
		[${dataname}]
	</body>
</html>