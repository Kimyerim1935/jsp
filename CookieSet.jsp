<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Cookie 생성</title>
	</head>
	<body>
		<h3>Cookie 클래스를 사용하여 쿠키를 생성합니다.</h3>
		
		<%
			Cookie cookie = new Cookie("CookieTest", " Hello Cookie!");
			response.addCookie(cookie);
		%>
		<h3> 쿠키생성이 완료되었습니다.</h3>
		<form action="CookieChk.jsp" method="post">
				<input type="submit" value="쿠키 확인 페이지">
		</form>
	</body>
</html>