<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	Cookie cookie= new Cookie("cookieName","cookieValue");
	response.addCookie(cookie);
%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>EL 쿠키 생성</title>
	</head>
	<body>
		쿠키생성이 완료되었습니다.		
	</body>
</html>