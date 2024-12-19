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
String title=request.getParameter("title");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("delete from notice where nnotice=?");
	ps.setString(1,title);
	int i=ps.executeUpdate();
	if(i>0){
		out.print("Notice Deleted Successfully");
	}
	else{
		out.print("Failed to Delete Notice");
	}
}
catch(Exception ex){
	out.print(ex);
}



%>

</body>
</html>