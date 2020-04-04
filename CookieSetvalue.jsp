<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Cookie 값 변경</title>
	</head>
	<body>
		<h3> Cookie 클래스를 사용하여 쿠키를 생성합니다.</h3>
		
		<%
		Cookie cookie = new Cookie("My Cookie","MyCookie's Value");
		
		response.addCookie(cookie);
		%>
		
		<h4> 쿠키 생성이 완료되었습니다.</h4>
		<h3> 생성된 쿠키의 구성 요소들을 출력합니다.</h3>
		<h4>쿠키의 이름 : <%=cookie.getName() %><br/>
		쿠키의 값 : <%=cookie.getValue() %><br/></h4>
		
		<form action = "CookieValueChg.jsp" method="post">
			<input type="submit",vlaue="쿠키변경페이지">		
		</form>
	</body>
</html>