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
					<ul>
						<li><a href="index.jsp">Home</a></li>
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
				
				<form action="module/doAddThread.jsp" method="post">
						<table>
							<tr>
								<td width="50%">
									Thread Category:
								</td>
								<td>
									<select name="category">
								<%
									int jmldata = 0;
									
									String query = "SELECT * FROM MsCategory";
									ResultSet rs1 = stmt.executeQuery(query);
									while(rs1.next()){
										jmldata++;
									}
									ResultSet rs = st.executeQuery(query);
									for(int i=0;rs.next();i++)
									{	

								%>
									<option value="<%=rs.getString("categorydesc")%>" name="category"><%=rs.getString("categorydesc")%></option>
									
									
								<%	}%>
									</select>
									
								</td>
							</tr>
							<tr>
								<td>
									Thread name:
								</td>
								<td>
									<input type="text" name="name">
								</td>
							</tr>
							<tr>
								<td>
									Content:
								</td>
								<td>
									<input type="text" name="content">
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