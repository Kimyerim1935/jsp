<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>pageContext 내장객체의 데이터 공유</title>
	</head>
	<body>
		setAttribute() 메서드 실행 <hr/>
		<%pageContext.setAttribute("testAttribute","Hello.pageContext"); %>
		getAttrobute() 메서드를 통해 공유된 데이터 불러오기 (p/);
		
		
	</body>
</html>