<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JDBC Insert</title>
	</head>
	<body>
		<%
			//변수 선언
			Connection conn = null;
			Statement stmt = null;
			int rowNum;
			
			try
			{
				//JDBC 드라이버 로딩
				Class.forName("com.mysql.jdbc.Driver");
				Class.forName("com.mysql.cj.jdbc.Driver");
			
			
				//JDBC URL 및 계정과 비밀번호를 지정하여 Connection 인스턴스를 통해 데이터베이스에 접속
				conn = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/jspbook?characterEncoding=UTF-8&serverTimezone=UTC",
				"jspbook",
				"jspbook"
				);
			
				//SQL문을 실행하기 위한 Statement 인스턴스 획득
				stmt= conn.createStatement();
				
				//Statement 인스턴스를 통해 실행한 SQL문 실행
				rowNum = stmt.executeUpdate( "INSERT INTO STUDENT (STUDENT_ID, STUDENT_NAME,STUDENT_EMAIL,STUDENT_TEL,DEPARTMENT_ID) VALUES ('20140007','김연아','yunakim@email.com','010-006-0006','M001')");
		
				out.println(rowNum + "개의 행이 삽입되었습니다." + "<hr/>");
			}
			catch (SQLException e)
			{
				//에러 발생
			}finally
			{
				//반환된 데이터의 사용이 종료되면 close()메서드를 사용하여 각각의 인스턴스 종료
				if(stmt != null) try{stmt.close();} catch (SQLException e) {}
				if(conn != null) try{conn.close();} catch (SQLException e) {}
			}
		
		%>
		<a href="http://localhost:8083/chap4/FirstJDBC.jsp">결과확인</a>
	</body>
</html>