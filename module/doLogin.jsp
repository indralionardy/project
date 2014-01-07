<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String role;
	Integer online = 0;
	String query = "SELECT * FROM MsUser where username ='"+username+"' AND Password ='"+password+"'";
	ResultSet rs = stmt.executeQuery(query);
	String msg = "";
	if(rs.next()){
		session.setAttribute("username", username);
		session.setAttribute("role", rs.getString(7));
		if(application.getAttribute("online")== null){
			online=0;
		}
		else{
			online =(Integer)application.getAttribute("online");
		}    
		online++;
		application.setAttribute("online",online);
		session.setAttribute("errmsg", "");
		response.sendRedirect("../index.jsp");
	}else{
		session.setAttribute("errmsg", "username or password is invalid");
		response.sendRedirect("../index.jsp");
	}
	
	//out.print("" + session.getAttribute("role"));
	
%>
