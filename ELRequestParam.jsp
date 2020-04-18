<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	request.setCharacterEncoding("utf-8");
%>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>EL요청 및 파라미터 데이터 사용</title>
	</head>
	<body>
		이름 : ${param.name}<br>
		선택언어 : ${paramValues.language[0] }
				${paramValues.language[1] }
				${paramValues.language[2] }
				${paramValues.language[3] }
				
	</body>
</html>