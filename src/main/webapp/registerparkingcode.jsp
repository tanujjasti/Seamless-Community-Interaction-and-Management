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
String parkingid=request.getParameter("parkingid");
String flatno=request.getParameter("flatno");
String block=request.getParameter("block");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("insert into parking (parkingid,flatno,block)values(?,?,?)");
	ps.setString(1,parkingid);
	ps.setString(2,flatno);
	ps.setString(3,block);
	int i=ps.executeUpdate();
	if(i>0){
		out.print("Parking Area Registered successfully");
	}
	else{
		out.print("Registration Failed For Parking Area");
	}
}
catch(Exception ex){
	out.print(ex);
}
%>

</body>
</html>