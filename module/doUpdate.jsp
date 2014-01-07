<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>

<%
	String upusername = request.getParameter("upusername");
	String upfullname = request.getParameter("upname");
	String upemail = request.getParameter("upemail");
	String upimage = request.getParameter("upimage");
	String upid = request.getParameter("upid");
	String query = "update msuser set username='"+upusername+"',fullname='"+upfullname+"',email='"+upemail+"',image='"+upimage+"' WHERE id = "+upid;
	
	st.executeUpdate(query);
	response.sendRedirect("../index.jsp");
%>
