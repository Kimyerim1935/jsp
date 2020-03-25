<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "java.text.SimpleDateFormat" %>
 <%@ page import = "java.util.Date" %>
 <%@page errorPage = "error.jsp" %>

	<% 
	Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat("yyyy/mm/dd");
	SimpleDateFormat time = new SimpleDateFormat("hh:mm:ss a");
	
	%>
	
	<H3>현재 날짜 :  <%= date.format(today) %> <br/>
	현재 시간 : <%=time.format(today) %></H3>