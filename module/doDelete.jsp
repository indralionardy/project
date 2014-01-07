<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="connect.jsp"%>
<%
String id = request.getParameter("id");
//validasi
String query = "DELETE FROM msuser WHERE id = "+id;
int r = st.executeUpdate(query);
	if(r>0){
		out.print("Insert Succeed: "+r+" row inserted");
	}else{
		out.print("Failed insert");
	}
%>

