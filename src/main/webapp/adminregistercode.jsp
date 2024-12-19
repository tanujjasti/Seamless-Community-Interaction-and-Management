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
	int adminid=Integer.parseInt(request.getParameter("aid"));
	String block=request.getParameter("block");
	String password =request.getParameter("pass");
	int phoneno=Integer.parseInt(request.getParameter("number"));
	String societyname=request.getParameter("sname");
	String societyadd=request.getParameter("address");
	int postal =Integer.parseInt(request.getParameter("postal"));
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("insert into admindata values(?,?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setInt(2,adminid);
	ps.setString(3,block);
	ps.setString(4,password);
	ps.setInt(5,phoneno);
	ps.setString(6,societyname);
	ps.setString(7,societyadd);
	ps.setInt(8,postal);
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