<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>include 액션태그 사용</title>
	</head>
	<body>
	
		인클루드 수행 전 메시지입니다!<br/>
		<%out.print("하나<br/>"); %>
		<%out.print("둘<br/>"); %>
		<%out.print("셋<br/>"); %>
		
		인클루드를 사용합니다!<hr>
		
		<jsp:include page="ActionTagIncluded.jsp"/>
		
		인클루드 수행 후 메시지입니다!<br/>
		
		<%out.print("하나<br/>"); %>
		<%out.print("둘<br/>"); %>
		<%out.print("셋<br/>"); %>
		
	</body>
</html>