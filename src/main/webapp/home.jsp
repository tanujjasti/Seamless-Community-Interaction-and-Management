<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Community</title>
        <style>
            .header
            {
                height: 80px;
                width: 100%;
                background-color: #1A4258;
                display: flex;
                justify-content: space-between;
            }
            a{
                text-decoration: none;
                color: white;
                margin-right: 14px;
                
            }
            a:hover
            {
                text-decoration: underline;
            }
            .left
            {
                margin-left: 10px;
            }
            .right
            {
                display: flex;
                align-items: center;
                margin-right: 40px;
                font-family:Arial, sans-serif;
                font-size: 14px;
                
            }
            .image
            {
                display: inline-block;
            }
            .submit
            {
                display: inline-block;
                color: white;
                background-color: #1A4258;
                width: 240px;
                height: 65px;
                border-radius: 10px;
                font-size: 20px;
                margin-left: 625px;
                vertical-align: top;
                margin-top: -182px;
                border: none;

            }
            .submit:hover
            {
                cursor: pointer;
               
            }
        </style>
    </head>
    <body>
        <div class="header">
            <div class="left">
                <img src="hcommunity.jpg" height="75px" width="auto">
            </div>

            <div class="right">
                <a href="home.jsp">Home</a>
                <a href="about.html">About Us</a>
                <a href="contact.html">Contact Us</a>
                <a href="reslogin.jsp">User Login</a>
                <a href="adminlogin.jsp">Admin Login</a>
            </div>
        </div>
        <div>
            <img class="image"src="welcomm.jpg" height="590px" width="100%">
            <form action="signup.jsp" method="post">
            <input class="submit" type="submit" value="Get Started">
            </form>
        </div>
    </body>
</html>