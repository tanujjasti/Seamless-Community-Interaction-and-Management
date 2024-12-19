<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>finance</title>
        <style>
            
            .content
            {
                width: 250px;
                height: 700px;
                display: inline-block;
                vertical-align: top;
                margin-top: 5px;
                
            }
           
            .name
            {
                padding: 10px 25px 10px 25px;
                margin-top: 50px;
                font-size: 18px;
               
               
                margin-left: 1px;
                border: none;
                color: #1A4258;
                border-radius: 4px;
            }
            .dash1
            {
                margin-top: 5px;
                margin-left: 10px;
                padding: 10px 30px 10px 15px;
                border-radius: 4px;
                color: #1A4258;

            }
            .dash
            {
                vertical-align: top;
                margin-top: -10px;
                margin-left: 10px;
                padding: 10px 30px 10px 15px;
                border-radius: 4px;
                color: #1A4258;


            }
            .image
            {
                vertical-align: top;
                margin-top: 10px;
                margin-left: 40px;
                height: 40px;
            }
            .header
            {
                height: 60px;
                width: 1100px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                margin-left: 10px;
                vertical-align: top;
                margin-top: 10px;
                background-color: rgb(245, 245, 245);
               
                display: inline-block;
               
               
            }
            .before
            {
                display: inline-block;
                margin-left: 20px;
                font-size: 22px;
                vertical-align: top;
                margin-top: -15px;
            }
            .after
            {
               
                display: inline-block;
                font-size: 13px;
                margin-left: 10px;
            }
            .hi
            {
                display: inline-block;

            }
            .search
            {
                display: inline-block;
                vertical-align: top;
                margin-left: 800px;
                margin-top: 15px;
                padding: 6px 1px 6px 1px;
                border-radius: 4px;

            }
            .dash:hover
            {
                cursor: pointer;
                color: white;
                background-color:  #1A4258;;
               
            }
            .dash1:hover
            {
                cursor: pointer;
                color: white;
                background-color:  #1A4258;;
               
            }
            .name:hover
            {
                cursor: pointer;
                color: white;
                background-color:  #1A4258;;
               
            }
            a {
                color: black;       
                text-decoration: none; 
            }
            .grey
            {
               border: 1px solid blue;
                height: 650px;
                width: 1200px;
                display: inline-block;
            }
            .namee{
                font-size: 20px;
                margin-left: 15px;
                margin-right: 15px;
                margin-top: 5px;}
                
            .profile{
            display:inline-block;
            }
              h1{
              
                margin-left: 100px;
                display: inline-block;
            }
            .profile
            {
                
                vertical-align: top;
                margin-left: 950px;
                margin-top: -70px;
                display: flex;
                justify-content: center;
                

            }
            .image1
            {
                height: 30px;
            }
            .new{
              background-color: #f1f4f3;
            height:590px;
            
            justify-content:start;
            
            }
            .dn{
            vertical-align:top;
            display:inline-block;
            margin-top:30px;
            margin-left:40px;
            padding: 8px 10px 8px 10px;
            border:solid;
            background-color:lightblue;
            width:210px;
            height:100px;
            
            }
            
            
        
            

        </style>
    </head>
    <body>
        <div class="content">
           
            <img class="image" src="dashimage.jpg">
            <a href="udashboard.jsp"><p class="dash1">Dashboard</p></a>
          <a href="urequestservices.jsp"><p class="dash">Request Services</p></a>
            <a href="ucomplaint.jsp"><p class="dash">Complaints</p></a>
            <a href="uevents.jsp"><p class="dash">Events</p></a>
            <a href="unotices.jsp"><p class="dash">Notices</p></a>
            <a href="uapartments.jsp"><p class="dash">Apartments</p></a>
            <a href="uparking.jsp"><p class="dash">Parking</p></a>
            <a href="uemergency.jsp"><p class="dash">Emergency Contacts</p></a>
            <a href="ubilling.jsp"><p class="dash">Billings</p></a>

            <a href="ulogout.jsp"><p class="name">Logout</p></a>
                   <%String name=(String)session.getAttribute("name");
            try{
            	Class.forName("com.mysql.cj.jdbc.Driver");
            	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community","root","tanuj20021008");
            	PreparedStatement ps=con.prepareStatement("select * from eventtable");
            	ResultSet rs=ps.executeQuery();%>
            	
            	
            	
            		
            		
            		
            	
            	
           
        </div>
        <div class="grey">
        
        <h1>Events</h1>
       
            <div class="profile">
             
                <div><img class="image1"src="profile.jpg"></div>
                <div><p class="namee"><%=name %></p></div>
        </div>
        
       <div class="new">
       <div Style="border:solid;background-color:lightpink;"><a style="margin-left:1080px;color:blue" href="feedback.jsp">Feedback</a></div>
       
      <%  while(rs.next()){ %>
            	
            	<div class="dn"><b style="font-size:18px;"><%=rs.getString(1)%></b><br><%=rs.getString(2)%><br><br>
            	<%=rs.getString(3) %>
            	
            	</div>
            
            	
            		
            	<%}
            }
            catch(Exception ex){
            	out.print(ex);
            }
            finally{
            	
            }
             
            %>
           
       
       </div>
       <br><br>
        </div>
        
        




    </body>
</html>