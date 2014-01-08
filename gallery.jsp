<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="module/connect.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>FORUM DOTA</title>
<link rel="stylesheet" href="css/style.css"/>
</head>

<body>
<img alt="full screen background image" src="image/bg.jpg" id="full-screen-background-image" /> 
	<div id="menu">
		<% 
					String role = (String)session.getAttribute("role");
					if(role==null)
					{
						role="guest";
					}
				%>
				
				<%
					
					if(role.equals("admin"))
					{
				%>
				<div id="admin">
				<div id="left">
					<img src="image/left.png" width="320px" height="50px">
				</div>
				<div id="right">
					<img src="image/right.png" width="320px" height="50px">
				</div>
				<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="member.jsp">Member</a></li>
						<li><a href="profile.jsp">Profile</a></li>
						<li><a href="forum.jsp">Forum</a></li>
						<li><a href="gallery.jsp">Gallery</a></li>
						<li><a href="about.jsp">About Us</a></li>
				</ul>
					<%
					String myname =  (String)session.getAttribute("username");
					if(myname!=null)
						{
						 out.println("Welcome  "+myname+"  , <a href=\"logout.jsp\" >Logout</a>");
						}
					else 
						{
							out.print("Welcome Guset");
						}
					%>
				</div>
				
				<%
					}
					else if(role.equals("member"))
					{
				%>
				<div id="member">
					<div id="left">
						<img src="image/left.png" width="380px" height="50px">
					</div>
					<div id="right">
						<img src="image/right.png" width="380px" height="50px">
					</div>
							<li><a href="index.jsp">Home</a></li>
							<li><a href="profile.jsp">Profile</a></li>
							<li><a href="forum.jsp">Forum</a></li>
							<li><a href="gallery.jsp">Gallery</a></li>
							<li><a href="about.jsp">About Us</a></li>
							<%
					String myname =  (String)session.getAttribute("username");
					if(myname!=null)
						{
						 out.println("Welcome  "+myname+"  , <a href=\"logout.jsp\" >Logout</a>");
						}
					else 
						{
							out.print("Welcome Guset");
						}
					%>
				</div>
				<%
					}
					else {
				%>
				<div id="guest">
					<div id="left">
						<img src="image/left.png" width="440px" height="50px">
					</div>
					<div id="right">
						<img src="image/right.png" width="450px" height="50px">
					</div>
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="forum.jsp">Forum</a></li>
						<li><a href="gallery.jsp">Gallery</a></li>
						<li><a href="about.jsp">About Us</a></li>
					</ul>				
				</div>
				<%
					}
				%>
	</div>
	<div style="clear:both">
	<div id="wrapper">
			<div id="isi">
				Gallery
				<a href="addGallery.jsp">add gallery</a>
				
				<%
					String query = "SELECT * FROM msgallery ";
					ResultSet rs = stmt.executeQuery(query);
					if(rs.next()){
						session.setAttribute("name", rs.getString(2));
						session.setAttribute("category", rs.getString(3));
						session.setAttribute("description", rs.getString(4));
						session.setAttribute("image", rs.getString(5));
					}
					String namegallery=(String)session.getAttribute("name");
					String categorygallery=  (String)session.getAttribute("category");
					String desgalleryc=  (String)session.getAttribute("description");
					String imagegallery=  (String)session.getAttribute("image");
				%>
				<table>
					<tr>
						<td>
							Name:
						</td>
						<td>
							<%=namegallery%>
						</td>
					</tr>
					<tr>
						<td>
							Category:
						</td>
						<td>
							<%=categorygallery%>
						</td>
					</tr>
					<tr>
						<td>
							Description:
						</td>
						<td>
							<%=desgalleryc%>
						</td>
					</tr>
					<tr>
						<td>
							Image:
						</td>
						<td>
							<%=imagegallery%>
						</td>
					</tr>
				</table>
				
			</div>
			<div id="user">
				<center>
				
				
				<%
				if(role.equals("guest"))
				{
				%>
				
				<h1>Login</h1>
				<form action="module/doLogin.jsp" method="post">
					<table>
						<tr>
							<td>
								Username:
							</td>
							<td>
								<input type="text" name="username">
							</td>
						</tr>
							<td>
								Password:
							</td>
							<td>
								<input type="password" name="password">
							</td>
						</tr>
						<tr>
							<td>
							<input type="submit" value="Login">
							</td>
						</tr>
						<tr>
							<td>
							<a href="register.jsp">SIGN UP </a>
							</td>
						</tr>
					</table>
				</center>
				</form>
				<%
				}
				%>
			</div>
	</div>
</body>
</html>