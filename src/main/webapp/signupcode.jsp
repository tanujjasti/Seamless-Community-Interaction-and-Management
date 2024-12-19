<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String role=request.getParameter("role");
if(role.equals("resident")){
	response.sendRedirect("user_register.jsp");
}
else{
	response.sendRedirect("admin_register.jsp");
}

%>

</body>
</html>