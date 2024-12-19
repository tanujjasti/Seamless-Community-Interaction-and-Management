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
int num=Integer.parseInt(request.getParameter("num"));
String flatno=request.getParameter("flatno");
int amount=Integer.parseInt(request.getParameter("amount"));
String payid=request.getParameter("payid");
String date=request.getParameter("date");
String status=request.getParameter("status");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("insert into bills values(?,?,?,?,?,?)");
	ps.setInt(1,num);
	ps.setString(2,flatno);
	ps.setInt(3,amount);
	ps.setString(4,payid);
	ps.setString(5,date);
	ps.setString(6,status);
	int i=ps.executeUpdate();
	if(i>0){
		out.print("Bill added Successfully");
	}
	else{
		out.print("Failed to Add Bill");
	}
}
catch(Exception ex){
	out.print(ex);
}



%>

</body>
</html>