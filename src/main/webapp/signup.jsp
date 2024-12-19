<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.main{
display:flex;
border:solid;
width:800px;
margin-left:300px;
margin-top:150px;

}
.one{
display:inline-block;
background-image: url("apartment.png");
background-size:cover;
width:400px;
height:420px;
}
.two{
display:inline-block;
width:400px;
height:420px;
vertical-align:top;
background-color:#f5f5f5;

}


</style>
</head>
<body>
<div class="main">
<div class="one">
</div>

<div class="two">
<center>
<img src="community.jpg"><br><br><br>
SignUp<br><br>
<form action="signupcode.jsp" method="post">
<label style="margin-right:124px;">Email</label><br>
<input type="email" name="email"><br><br>
<label style="margin-right:100px;">Password</label><br>
<input type="password" name="spass"><br><br>
<label style="margin-right:128px;">Role</label><br>
<select style="margin-right:42px;padding-left:25px; padding-right:25px;" name="role">
<option value="resident">Resident</option>
<option value="admin">Admin</option>
</select><br><br><br>
<input style=" background-color:blue; padding-left:25px; padding-right:25px;font-size:20px" type="submit" value="signup">


</form>
</center>

</div>

</div>

</body>
</html>