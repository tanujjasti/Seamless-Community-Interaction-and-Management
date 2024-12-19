<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Signup</title>
        <style>
            body {
            display: flex;
            justify-content: center;
            align-items: center;
            
            height: 100vh;
            font-family: Arial, sans-serif;
            background-color:  #f0f0f0;
            }
            .container
            {
                
                display: flex;
                justify-content: center;
                margin-top: 1px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            }
            .block1
            {
                height: 500px;
                width: 450px;
                background-color: #290d0d;
                color: white;
                border-right: 1px solid red;
            }
            .block2
            {
                height: 500px;
                background-color:white;
                border: none;
                width: 450px;
                color: black;
            }
            .head
            {
                font-size: 40px;
                font-family: 'Roboto', sans-serif;
                margin-top: 70px;
                font-weight: bold;
            }
            .right-head
            {
                margin-left: 20px;
                font-size: 18px;
                font-weight: lighter;
                font-family:Arial, Helvetica, sans-serif;
                margin-top: 30px;
                font-weight: bold;
                color:  #1A4258;
            }
            .box
            {
            width: 300px;
            vertical-align: top;
            margin-top: 40px;
            padding: 10px;
            border: 1px solid #ddd;
            background-color: #ddd;
            color: black;
            border-radius: 3px;
            font-size: 13px;
            }
            .box1
            {
            width: 300px;
            vertical-align: top;
            margin-top: -5px;
            padding: 10px;
            border: 1px solid #ddd;
            background-color: #ddd;
            color: black;
            border-radius: 3px;
            font-size: 13px;
            }
            .button
            {
            width: 150px;
            vertical-align: top;
            margin-top: 1px;
            padding: 10px;
            border: none;
            background-color: #1A4258;;
            color: white;
            border-radius: 5px;
            font-size: 13px;
            }
            .in{
                border: none;
                margin-top: 20px;
                display: inline-block;
                vertical-align: top;
                margin-top: -100px;

            }
            .sub
            {
                vertical-align: top;
                margin-top: -20px;
                color: white;
                font-family: 'Roboto', sans-serif;
                font-size: 13px;
                font-weight: 100;
                line-height: 22px;
            }
            .button:hover{
                opacity: 0.7;
                cursor: pointer;
            

            }
            .image
            {
                display: inline-block;
                height: 500px;
                width: auto;
            }


        </style>
    </head>
    <body>
        <div class="container">
            <div class="block1">
                <img class="image" src="apartment.png">
                

            </div>
            <div class="block2">
                <p class="right-head">Sign Up</p>
                <form action="userregistercode.jsp" method="post">
                    <center>
                        <input class="box" type="text" name="uname" placeholder="Name"><p></p>
                        <input class="box1" type="text" name="flatno" placeholder="Flat No"><p></p>
                         <input class="box1" type="text" name="block" placeholder="block"><p></p>
                        <input class="box1" type="password" name="pass" placeholder="Password"><p></p>
                        <input class="box1" type="text" name="number" placeholder="Phone No"><p></p>
                        <input class="box1" type="text" name="district" placeholder="District"><p></p>
                        <input class="box1" type="text" name="postal" placeholder="Postal"><p></p>
                       
                       
                        <input class="button" type="submit" value="Register">
                    </center>


                </form>

            </div>
        </div>
    </body>
</html>