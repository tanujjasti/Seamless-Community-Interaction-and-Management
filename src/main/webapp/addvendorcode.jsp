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
String name=request.getParameter("name");
String company=request.getParameter("company");
String service=request.getParameter("service");
String phonenum=request.getParameter("phoneno");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("insert into vendor (name,company,service,phonenum)values(?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,company);
	ps.setString(3,service);
	ps.setString(4,phonenum);
	int i=ps.executeUpdate();
	if(i>0){
		out.print("Vendor Added Successfully");
	}
	else{
		out.print("Failed to Add Vendor");
	}
	
	
}
catch(Exception ex){
	out.print(ex);
}
%>

</body>
</html>