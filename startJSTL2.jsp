<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JSTL 사용</title>
	</head>
	<body>
		<c:out value="Hello,JSTL"/>
		<table border="1">
		<c:forEach var="i" begin="1" end="5">
			<tr>
				<td>
					<c:out value="${i}"/>
				</td>
			</tr>
		</c:forEach>	
		</table>
	</body>
</html>