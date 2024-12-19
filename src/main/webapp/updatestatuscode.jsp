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
String status="closed";
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("update complaint set status=? where flatno=?");
	ps.setString(1,status);
	ps.setString(2,flatno);
	int i=ps.executeUpdate();
	if(i>0){
		out.print("complaint Status Updated Successfully");
	}
	else{
		out.print("Complaint Status Updation Failed");
	}
	
}
catch(Exception ex){
	out.print(ex);
}

%>

</body>
</html>