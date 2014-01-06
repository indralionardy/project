<%
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con = DriverManager.getConnection("jdbc:odbc:driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ=" + application.getRealPath("WEB-INF/db.accdb"));
	Statement stmt = con.createStatement(1004,1008);
	Statement st = con.createStatement(1004,1008);
	//out.print(application.getRealPath(""));
%>
