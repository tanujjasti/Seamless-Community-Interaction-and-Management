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
String name=request.getParameter("aname");
String password=request.getParameter("pass");
int id=Integer.parseInt(request.getParameter("id"));
session.setAttribute("id",id);
session.setAttribute("pass",password);
session.setAttribute("aname",name);
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("select * from admindata where aid=? and password=?");
	ps.setInt(1,id);
	ps.setString(2,password);
	ResultSet rs=ps.executeQuery();
	
	if(rs.next()){
		response.sendRedirect("aboard.jsp");
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