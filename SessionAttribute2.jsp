<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Session의 속성 사용</title>
	</head>
	<% 
		session.setAttribute("ID","TestID"); 
		session.setAttribute("Grade","관리자");
	%>
	
	<body>
		세션의 속성 설정 페이지입니다 <hr>
		현재 접속하신 ID는 [<%=session.getAttribute("ID") %>]입니다.<br>
		[<%=session.getAttribute("Grade") %>]권한으로 접속중입니다.<hr>
		
		설정된 세션의 속성값을 삭제합니다.<hr>
		
		<%
			session.getAttribute("ID");
			session.getAttribute("Grade");
		%>

		현재 접속하신 ID는 <%=session.getAttribute("ID") %>입니다.<br>
		[<%=session.getAttribute("Grade") %>] 권한으로 접속 중입니다.
				
	</body>
</html>