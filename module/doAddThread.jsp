<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="connect.jsp"%>

<%
	String category = request.getParameter("category");
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	String categoryid;
	String myname =  (String)session.getAttribute("username");
	String getid = "SELECT * FROM mscategory where categorydesc='"+category+"'";
					ResultSet rs = stmt.executeQuery(getid);
					if(rs.next()){
						session.setAttribute("categoryid", rs.getString(1));
					}
					String id=(String)session.getAttribute("categoryid");
	
	String query = "insert into msheaderthread (categoryid ,userid, threadname ,subject,subdate) values ('"+id+"','"+myname+"','"+name+"','"+content+"',NOW())";
	
	st.executeUpdate(query);

	response.sendRedirect("../forum.jsp");
	
%>
