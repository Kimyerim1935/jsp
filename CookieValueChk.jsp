<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Cookie 생성</title>
	</head>
	<body>
		<h3>생성된 "CookieTest" 쿠키를 확인합니다.</h3><br/>
		
		<%
			Cookie[] cookies = request.getCookies();
			if(cookies != null && cookies.length >0){
				for(int i = 0; i < cookies.length; i++){
					if(cookies[i].getName().equals("MyCookie")){
						%>
		<h3>
		쿠키의 이름 : <%= cookies[i].getName() %><br/>
		쿠키의 값 : <%= cookies[i].getValue() %>)<br/>
		
		</h3>	
		<%
					}
					
				}
			}
		
		%>
	</body>
</html>