<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String flatno=request.getParameter("flatno");
String password=request.getParameter("rpass");
String name=request.getParameter("name");
session.setAttribute("flatno",flatno);
session.setAttribute("rpass",password);
session.setAttribute("name",name);
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("select * from residentdata where flatno=? and password=?");
	ps.setString(1,flatno);
	ps.setString(2,password);
	ResultSet rs=ps.executeQuery();
	
	if(rs.next()){
		response.sendRedirect("uboard.jsp");
	}
	else{
		out.print("login failed");
	}
}
catch(Exception ex){
	out.print(ex);
}

%>

</body>
</html>