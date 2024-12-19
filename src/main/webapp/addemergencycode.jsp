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
String block=request.getParameter("block");
String phone=request.getParameter("phone");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("insert into emergency (name,block,phoneno)values(?,?,?)");
	ps.setString(1,name);
	ps.setString(2,block);
	ps.setString(3,phone);
	int i=ps.executeUpdate();
	if(i>0){
		out.print("Contact added Successfully");
	}
	else{
		out.print("Failed to Add Contact");
	}
}
catch(Exception ex){
	out.print(ex);
}



%>

</body>
</html>