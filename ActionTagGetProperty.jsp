<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>getProperty 액션태그 사용</title>
	</head>
	<body>
		<jsp:useBean id="meMeber" class="beans.Member"/>
		<jsp:setProperty name="myMember" property="id" value="OKJSP"/>
		<jsp:setProperty name="meMeber" property="password" value="OKPASSWORD"/>
		
		ID : <jsp:getProperty name="mymember" property ="ID"/> <br/>
		Password : <jsp:getProperty name="mymember" property = "Password"/>
	</body>
</html>