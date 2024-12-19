<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>input</title>
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
            
            }
            .sub{
            margin-left:25px;
            border:solid;
            width:150px;
            height:100px;
            display:inline-block;
            background-image:linear-gradient(pink,yellow);
            }
            .bold{
            font-size:30px;
            }
            .sab{
            margin-left:400px;
            margin-top:100px;
            height:270px;
            border-radius:5px;
            width:350px;
            box-shadow:10px 10px 15px rgba(0, 0, 0, 0.3);
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
            String flatnum=(String)session.getAttribute("flatno");
            String nam=null;
            String block=null;
            String flat=null;
            int num=0;
            String dist=null;
            int service=0;
            int parking=0;
            int complaint=0;
            int bill=0;
            int clear=0;
            int paid=0;
           String status="closed";
           String stat="clear";
            
            try{
            	Class.forName("com.mysql.cj.jdbc.Driver");
            	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community","root","tanuj20021008");
            	PreparedStatement ps=con.prepareStatement("select * from residentdata where flatno=?");
            	ps.setString(1,flatnum);
            	ResultSet rs=ps.executeQuery();
            	 if(rs.next()){
            		 nam=rs.getString(1);
            		 block=rs.getString(3);
            		 flat=rs.getString(2);
            		 dist=rs.getString(6);
            		 num=rs.getInt(5);
            	 }
            	 PreparedStatement ab=con.prepareStatement("select count(service) from services where flatno=? ");
            		ab.setString(1,flatnum);
              	ResultSet cd=ab.executeQuery();
              	 if(cd.next()){
              		 service=cd.getInt(1);
              	 }
              	PreparedStatement op=con.prepareStatement("select count(flatno) from parking where flatno=? ");
            	op.setString(1,flatnum);
             	ResultSet po=op.executeQuery();
             	 if(po.next()){
             		 parking=po.getInt(1);
             	 }
             	PreparedStatement pp=con.prepareStatement("select count(flatno) from complaint where flatno=? ");
            	pp.setString(1,flatnum);
            	ResultSet ss=pp.executeQuery();
            
            	 if(ss.next()){
            		 complaint=ss.getInt(1);
            	 }
            	 PreparedStatement co=con.prepareStatement("select count(flatno) from bills where flatno=? ");
            		co.setString(1,flatnum);
             	ResultSet oc=co.executeQuery();
             	 if(oc.next()){
             		 bill=oc.getInt(1);
             	 }
             	 PreparedStatement lo=con.prepareStatement("select count(flatno) from complaint where status=? and flatno=? ");
             	 lo.setString(1,status);
             	lo.setString(2,flatnum);
              	ResultSet ol=lo.executeQuery();
              	 if(ol.next()){
              		 clear=ol.getInt(1);
              	 }
              	 PreparedStatement no=con.prepareStatement("select count(flatno) from bills where status=? and flatno=? ");
             	 no.setString(1,stat);
             	no.setString(2,flatnum);
              	ResultSet on=no.executeQuery();
              	 if(on.next()){
              		 paid=on.getInt(1);
              	 }
             	 
            }
            catch(Exception ex){
            	out.print(ex);
            }
             
            %>

             
           
             
           
        </div>
        <div class="grey">
        
        <h1>DashBoard</h1>
       
            <div class="profile">
             
                <div><img class="image1"src="profile.jpg"></div>
                <div><p class="namee"><%= name %></p></div>
        </div>
        
       <div class="new">
       <br>
        <div class="sub"><br><b>Complaints Raised:</b><br><br>
      <center> <b class="bold"><%= complaint %></b></center>
       </div>
       <div class="sub"><br><b>Services Requested:</b><br><br>
      <center> <b class="bold"><%= service %></b></center>
       </div>
       <div class="sub"><br><b>No Of parking slots:</b><br><br>
      <center> <b class="bold"><%= parking%></b></center>
       </div>
       
        <div class="sub"><br><b>No Of Bills:</b><br><br>
      <center> <b class="bold"><%= bill%></b></center>
       </div>
       
       <div class="sub"><br><b>Complaints Solved:</b><br><br>
      <center> <b class="bold"><%= clear%></b></center>
       </div>
       
        <div class="sub"><br><b>Bills Paid:</b><br><br>
      <center> <b class="bold"><%= paid%></b></center>
       </div>
       
       <div class="sab">
       <br>
       <b style="color:skyblue;font-size:25px;"><%=nam %></b><br><br><br>
       Block:<%=block %><br><br>
       Flat No:<%=flat %><br><br>
       Society:Amaravathi<br><br>
       Number:<%=num %><br><br>
       District:<%=dist %>
       
       </div>
       
       </div>
       
       </div>
        </div>
        
        




    </body>
</html>