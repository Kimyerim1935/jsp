<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>쿠키를 이용한 세션관리</title>
	</head>
	<body>
		<%
			String rememberId = request.getParameter("rememberId");
			String id = request.getParameter("id");
			Cookie cookieRememberId;
			Cookie cookieId;
			Cookie cookieLoginStatus;
			 
			if (rememberId != null && rememberId.equals("keep"))
			{
				cookieRememberId = new Cookie ("rememberId", "keep");
			}
			else {
				cookieRememberId = new Cookie("rememberId","temp");
			}
			cookieId=new Cookie("id",id);
			cookieLoginStatus = new Cookie("loginStatus","login");
			
			response.addCookie(cookieRememberId);
			response.addCookie(cookieId);
			response.addCookie(cookieLoginStatus);
			
			out.println(cookieRememberId.getValue());
			response.sendRedirect("http://localhost:8083/chap4/CookieSessionChk.jsp");
			
			%>
	</body>
</html>