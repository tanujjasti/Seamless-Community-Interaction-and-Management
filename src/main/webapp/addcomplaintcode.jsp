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
String flatno=request.getParameter("flatno");
String complaint=request.getParameter("complaint");
String status=request.getParameter("status");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("insert into complaint (name,flatno,complaint,status)values(?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,flatno);
	ps.setString(3,complaint);
	ps.setString(4,status);
	int i=ps.executeUpdate();
	if(i>0){
		out.print("Complaint added Successfully");
	}
	else{
		out.print("Failed to Add Complaint");
	}
}
catch(Exception ex){
	out.print(ex);
}



%>

</body>
</html>