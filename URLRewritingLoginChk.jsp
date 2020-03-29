<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>URL Rewriting 방식을 이용한 세션관리</title>
	</head>
	<body>
		<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		%>
		
		<%
		if (id==null ||pw==null||id.trim().equals("") ||pw.trim().equals("")){
			
			out.print("<b>아이디와 비밀번호는 반드시 입력되어야 합니다.</b><hr/>");
			pageContext.include("URLRewritingLogin.jsp");
			
		}else {
		%>
		로그인에 성공하였습니다 <br/>
		[<%=id %>]님 환영합니다.<hr/>
		<a href ="URLRewritingPwChk.jsp?id=<%=id%>&pw=<%=pw%>">
		[비밀번호 확인]</a>
		<%
		}
		%>
		
	</body>
</html>