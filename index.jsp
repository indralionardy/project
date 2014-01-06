<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>FORUM DOTA</title>
<link rel="stylesheet" href="css/style.css"/>
</head>

<body>
<img alt="full screen background image" src="image/bg.jpg" id="full-screen-background-image" /> 
	<div id="left">
		<img src="image/left.png" width="320px" height="50px">
	</div>
	<div id="right">
		<img src="image/right.png" width="320px" height="50px">
	</div>
	<div id="menu">
		<% 
					String role = (String)session.getAttribute("role");
				%>
				
				<%
					
					if(role.equals("admin"))
					{
				%>
				<div id="admin">
				<ul>
						<li>Home</li>
						<li>Member</li>
						<li>Profile</li>
						<li>Forum</li>
						<li>Gallery</li>
						<li>About Us</li>
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
				<div id="submenu">
					gallery
				</div>
				<%
					}
					else {
				%>
				<div id="submenu">
					<ul>
						<li>Home</li>
						<li>Member</li>
						<li>Profile</li>
						<li>Forum</li>
						<li>Gallery</li>
						<li>About Us</li>
					</ul>		
				</div>
				<%
					}
				%>
	</div>
	<div style="clear:both">
	<div id="wrapper">
			<div id="isi">

			</div>
			<div id="user">
				<center>
				<h1>Login</h1>
				</br>
				<form action="login.jsp" method="post">
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
					</table>
				</center>
				</form>
			</div>
	</div>
</body>
</html>