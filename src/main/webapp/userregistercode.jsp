<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try{
	String name=request.getParameter("uname");
	String flatno=request.getParameter("flatno");
	String block=request.getParameter("block");
	String password =request.getParameter("pass");
	int phoneno=Integer.parseInt(request.getParameter("number"));
	String district=request.getParameter("district");
	int postal =Integer.parseInt(request.getParameter("postal"));
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("insert into residentdata values(?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,flatno);
	ps.setString(3,block);
	ps.setString(4,password);
	ps.setInt(5,phoneno);
	ps.setString(6,district);
	ps.setInt(7,postal);
	int i=ps.executeUpdate();
	if(i>0){
		response.sendRedirect("success.jsp");
	}
	else{
		out.print("registration failed");
	}
	
}
catch(Exception ex){
	out.print(ex);
}

%>


</body>
</html>