<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String repassword = request.getParameter("repassword");
	String fullname = request.getParameter("name");
	String email = request.getParameter("email");
	String image = request.getParameter("image");
	String query = "insert into msuser (username, password, fullname, email, image, role) values ('"+username+"','"+password+"','"+fullname+"','"+email+"','"+image+"','member')";
	
	st.executeUpdate(query);

	response.sendRedirect("../index.jsp");
%>
