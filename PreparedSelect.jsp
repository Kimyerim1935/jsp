<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JDBC PreparedStatement</title>
	</head>
	<body>
		<%
			//변수 선언
			Connection conn = null;
			ResultSet rs = null;
			PreparedStatement pstmt = null;
			
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
				
				//SQL문을 실행하기 위한 PrepardeStatement 사용
				pstmt = conn.prepareStatement("SELECT * FROM STUDENT WHERE DEPARTMENT_ID = ? AND STUDENT_ID LIKE ?");
				
				pstmt.setString(1,"M001");
				pstmt.setString(2,"2014%");
				
				//PrepardeStatement 인스턴스를 통해 실행한 SQL문 실행 결과를  ResultSet에 반환
				rs= pstmt.executeQuery();
				
				//반환된 결과를  ResultSet의 메서드와  while 반복은을 통해 출력
				while(rs.next())
				{
					out.println(rs.getString(1)+ "|");
					out.println(rs.getString(2)+ "|");
					out.println(rs.getString(3)+ "|");
					out.println(rs.getString(4)+ "|");
					out.println(rs.getString(5)+ "<br/>");
				
				}
			}catch (SQLException e)
			{
				out.println(e.getMessage());
			}finally
			{
				//반환된 데이터의 사용이 종료되면 close() 메서드를 사용하여 각각의 인스턴스 종료
				if(pstmt != null) try{pstmt.close();} catch (SQLException e ){}
				if(conn != null) try{conn.close();} catch (SQLException e){}
			}
			
		%>
	</body>
</html>