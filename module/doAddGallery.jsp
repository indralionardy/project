<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>

<%
	String nameg = request.getParameter("name");
	String categoryg = request.getParameter("category");
	String descg = request.getParameter("desc");
	String imageg = request.getParameter("image");
	String query = "insert into msgallery (name, category, description, image) values ('"+nameg+"','"+categoryg+"','"+descg+"','"+imageg+"')";
	
	st.executeUpdate(query);

	response.sendRedirect("../gallery.jsp");
%>
