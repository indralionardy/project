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
	<div id="menu">
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
	</div>
	<div style="clear:both">
	<div id="wrapper">
			<div id="isi">
				<div style="margin-left:450px; margin-top:5px; color:white;">
					REGISTER
				</div>
				<div id="register">
					<form action="module/doRegister.jsp" method="post">
						<table>
							<tr>
								<td width="50%">
									Username :
								</td>
								<td>
									<input type="text" name="username">
								</td>
							</tr>
							<tr>
								<td>
									Password :
								</td>
								<td>
									<input type="password" name="password">
								</td>
							</tr>
							<tr>
								<td>
									Verified Password :
								</td>
								<td>
									<input type="password" name="repassword">
								</td>
							</tr>
							<tr>
								<td>
									Fullname :
								</td>
								<td>
									<input type="text" name="name">
								</td>
							</tr>
							<tr>
								<td>
									Email :
								</td>
								<td>
									<input type="text" name="email">
								</td>
							</tr>
							<tr>
								<td>
									Image :
								</td>
								<td>
								<input type="text" name="image">
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