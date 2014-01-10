<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>

<%
	String addcategory = request.getParameter("category");
	
	String query = "insert into mscategory (categorydesc) values ('"+addcategory+"')";
	
	st.executeUpdate(query);

	response.sendRedirect("../forum.jsp");
%>
