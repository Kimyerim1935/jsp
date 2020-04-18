<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>EL쿠키 출력</title>
	</head>
	<body>
		<h3>
			Cookie 작성 후 출력
		</h3>
		
		${cookie}<hr>
		
		<h3>
		cookie.cookieName 작성 후 출력
		</h3>
		
		${cookie.cookieName}<hr>
		
		<h3>cookie.cookieName의 value 출력</h3>
		${cookie.cookieName.value}<br>
		${cookie.cookieName["value"]}<br>
		${cookie.["cookieName"].value}<br>
		${cookie["cookieName"]["value"]}<br>
	</body>
</html>