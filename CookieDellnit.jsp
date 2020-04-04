<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>쿠키의 삭제</title>
	</head>
	<body>
		<h3> Cookie 클래스를 사용하여 쿠키를 생성합니다.</h3>
		<%
			Cookie cookie = new Cookie("DelCookie","This cookie will be deleted");
			response.addCookie(cookie);
		%>
		<h4> 쿠키 생성이 완료되었습니다.</h4><br/>
		<h3>생성된 쿠키의 구성요소들을 출럭합니다.</h3>
		<h4> 쿠키의 이름 : <%=cookie.getName()%>
			쿠키의 값 : <%=cookie.getValue() %><br/></h4>
			
			<form action="CookieDelPerform.jsp" method="post">
				<input type = "submit" value="쿠키 삭제 페이지">
			</form>	
		
		</body>
</html>