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
String notice=request.getParameter("notice");
String title=request.getParameter("title");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("insert into notice values(?,?,?)");
	ps.setInt(1,num);
	ps.setString(2,notice);
	ps.setString(3,title);
	int i=ps.executeUpdate();
	if(i>0){
		out.print("Notice added Successfully");
	}
	else{
		out.print("Failed to Add Notice");
	}
}
catch(Exception ex){
	out.print(ex);
}



%>

</body>
</html>