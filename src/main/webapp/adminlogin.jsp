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
<center>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<a href="reslogin.jsp"><input type="button" value="SignIn"></a>

</center>
</div>

<div class="two">
<center>
<img src="community.jpg"><br><br><br>
<b>Admin</b><br>
<b>Welcome back</b><br><br>
<form action="adminlogincode.jsp" method="post">
<label style="margin-right:124px;">Name</label><br>
<input type="text" name="aname"><br><br>
<label style="margin-right:124px;">User Id</label><br>
<input type="text" name="id"><br><br>
<label style="margin-right:100px;">Password</label><br>
<input type="password" name="pass"><br><br>
<br>
<input style=" background-color:blue; padding-left:25px; padding-right:25px;font-size:20px" type="submit" value="signin">


</form>
</center>

</div>

</div>

</body>
</html>