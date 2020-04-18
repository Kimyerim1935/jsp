<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>EL의 삼항연산자</title>
	</head>
	<body>
		param.gender == "male"? "남자":"여자"<br>
		<h3>결과 : ${param.gender == "male" ? "남자" :"여자"}</h3>
	</body>
</html>