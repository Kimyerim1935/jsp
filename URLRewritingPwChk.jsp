<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>URL Rewriting방식을 이용한 세션관리</title>
	</head>
	<body>
		<%
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
		%>
		
		비밀번호 확인 메시지입니다.<hr/>
		[<%=id%>]님의 비밀번호는 [<%=pw%>] 입니다.
	</body>
</html>