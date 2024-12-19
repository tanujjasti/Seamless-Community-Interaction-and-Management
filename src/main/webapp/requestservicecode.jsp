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
String phoneno=request.getParameter("phone");
String service=request.getParameter("service");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("insert into services (flatno,phoneno,service)values(?,?,?)");
	ps.setString(1,flatno);
	ps.setString(2,phoneno);
	ps.setString(3,service);
	int i=ps.executeUpdate();
	if(i>0){
		out.print("Service Request Sent Successfully");
	}
	else{
		out.print("Service Request Has Failed");
	}
}
catch(Exception ex){
	out.print(ex);
	
}
%>

</body>
</html>