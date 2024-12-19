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
String payid=request.getParameter("payid");
String date=request.getParameter("date");
String status=request.getParameter("status");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("update bills set payid=?,date=?,status=? where flatno=? and no=?");
	ps.setString(1,payid);
	ps.setString(2,date);
	ps.setString(3,status);
	ps.setString(4,flatno);
	ps.setInt(5,num);
	int i=ps.executeUpdate();
	if(i>0){
		out.print("Payment Done Successfully");
	}
	else{
		out.print("Payment Failed");
	}
}
catch(Exception ex){
	out.print(ex);
}



%>

</body>
</html>