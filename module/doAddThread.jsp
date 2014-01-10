<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>

<%
	String category = request.getParameter("category");
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	String categoryid;
	String query = "insert into msheaderthread (threadname , subject) values ('"+name+"','"+content+"')";
	
	st.executeUpdate(query);

	response.sendRedirect("../forum.jsp");
	
%>
