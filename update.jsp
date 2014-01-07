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
				%>
				
				<%
					
					if(role=="admin")
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
						<li>Home</li>
						<li><a href="member.jsp">Member</a></li>
						<li><a href="profile.jsp">Profile</a></li>
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
					else if(role=="member")
					{
				%>
				<div id="member">
					<div id="left">
						<img src="image/left.png" width="380px" height="50px">
					</div>
					<div id="right">
						<img src="image/right.png" width="380px" height="50px">
					</div>
							<li>Home</li>
							<li>Profile</li>
							<li>Forum</li>
							<li>Gallery</li>
							<li>About Us</li>
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
						<li>Home</li>
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
				<%
					String myname =  (String)session.getAttribute("username");
					String query = "SELECT * FROM MsUser where username='"+myname+"'";
					ResultSet rs = stmt.executeQuery(query);
					if(rs.next()){
						session.setAttribute("username", rs.getString(2));
						session.setAttribute("fullname", rs.getString(4));
						session.setAttribute("email", rs.getString(5));
						session.setAttribute("image", rs.getString(6));
						session.setAttribute("id", rs.getString(1));
					}
					String name=(String)session.getAttribute("username");
					String fullname=  (String)session.getAttribute("fullname");
					String email=  (String)session.getAttribute("email");
					String image=  (String)session.getAttribute("image");
					Integer id=  (String)session.getAttribute("id");
				%>
				<form action="module/doUpdate.jsp" method="post">
						<table>
							<tr>
								<td width="50%">
									Username :
								</td>
								<td>
									<input type="text" name="upusername" value=<%=name%>>
								</td>
							</tr>
							<tr>
								<td>
									Fullname :
								</td>
								<td>
									<input type="text" name="upname" value=<%=fullname%>>
								</td>
							</tr>
							<tr>
								<td>
									Email :
								</td>
								<td>
									<input type="text" name="upemail" value=<%=email%>>
								</td>
							</tr>
							<tr>
								<td>
									Image :
								</td>
								<td>
								<input type="text" name="upimage" value=<%=image%>>
								<input type="text" name="upid" value=<%=id%>>
								</td>
							</tr>
							<tr>
								<td>
									<input type="submit" value="Submit">
								</td>
							</tr>
						</table>
					</form>
			</div>
			<div id="user">
				<center>
				<h1>Login</h1>
				</br>
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
					</table>
				</center>
				</form>
			</div>
	</div>
</body>
</html>