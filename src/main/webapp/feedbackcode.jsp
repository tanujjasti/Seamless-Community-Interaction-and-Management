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
String event=request.getParameter("ename");

String feedback=request.getParameter("feed");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("insert into feedback values(?,?)");
	ps.setString(1,event);
	ps.setString(2,feedback);
	int i=ps.executeUpdate();
	if(i>0){
		out.print("Feedback added Successfully");
	}
	else{
		out.print("Failed to Add Feedback");
	}
}
catch(Exception ex){
	out.print(ex);
}



%>

</body>
</html>