<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src='https://kit.fontawesome.com/a076d05399.js'></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    
</body>
<form>
<div class="container">
<div class="row">
<div class="col-md-5">
<b><span style="font-size:20pt;color:brown">Users in VRide</span></b><br><br>
<table class="table table-striped table-bordered ">
<tr>
<td>ID</td>
<td>NAME</td>
</tr>
<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
String url="jdbc:mysql://localhost:3306/database";
String username="root";
String password="Vaish@123";
String query="SELECT * FROM users";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <tr><td><%=rs.getLong("id") %></td>
    <td><%=rs.getString("uname") %></td></tr>
        <%

}
%>
    </table>
    </div>
    </div></div>
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }
%>
</form>
</html> 