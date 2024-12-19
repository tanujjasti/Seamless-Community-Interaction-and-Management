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
            .ab{
            display:flex;
            margin-top:60px;
            margin-left:70px;
            }
            .sab{
            margin-left:50px;
            height:200px;
            border-radius:5px;
            width:350px;
            box-shadow:10px 10px 15px rgba(0, 0, 0, 0.3);
            }
            .last{
              margin-left:25px;
              margin-top:50px;
            border:solid;
            width:150px;
            height:100px;
            display:inline-block;
            background-image:linear-gradient(gold,pink);
            
            }
        
            

        </style>
    </head>
    <body>
        <div class="content">
           
            <img class="image" src="dashimage.jpg">
            <a href="adashboard.jsp"><p class="dash1">Dashboard</p></a>
          <a href="arequestservices.jsp"><p class="dash">Request Services</p></a>
            <a href="acomplaint.jsp"><p class="dash">Complaints</p></a>
            <a href="aevents.jsp"><p class="dash">Events</p></a>
            <a href="anotices.jsp"><p class="dash">Notices</p></a>
            <a href="aapartments.jsp"><p class="dash">Apartments</p></a>
            <a href="aparking.jsp"><p class="dash">Parking</p></a>
            <a href="aemergency.jsp"><p class="dash">Emergency Contacts</p></a>
            <a href="abilling.jsp"><p class="dash">Billings</p></a>

            <a href="alogout.jsp"><p class="name">Logout</p></a>
            <%String name=(String)session.getAttribute("aname");
            String block="A";
            int fla=0;
            int afla=0;
            int bfla=0;
            int complaints=0;
            int parking=0;
            int vendors=0;
            int events=0;
            int security=0;
            int notice=0;
            try{
            	Class.forName("com.mysql.cj.jdbc.Driver");
            	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community","root","tanuj20021008");
            	PreparedStatement ps=con.prepareStatement("select count(flatno) from residentdata");
            	ResultSet rs=ps.executeQuery();
            	 if(rs.next()){
            		 fla=rs.getInt(1);
            	 }
            	 PreparedStatement sp=con.prepareStatement("select count(flatno) from residentdata where block=?");
            	 sp.setString(1,block);
             	ResultSet sr=sp.executeQuery();
             	 if(sr.next()){
             		 afla=sr.getInt(1);
             	 }
             	 bfla=fla-afla;
             	PreparedStatement pp=con.prepareStatement("select count(flatno) from complaint ");
            	ResultSet ss=pp.executeQuery();
            	 if(ss.next()){
            		 complaints=ss.getInt(1);
            	 }
            	 PreparedStatement op=con.prepareStatement("select count(flatno) from parking ");
             	ResultSet po=op.executeQuery();
             	 if(po.next()){
             		 parking=po.getInt(1);
             	 }
             	PreparedStatement ab=con.prepareStatement("select count(service) from vendor ");
             	ResultSet cd=ab.executeQuery();
             	 if(cd.next()){
             		 vendors=cd.getInt(1);
             	 }
             	PreparedStatement tk=con.prepareStatement("select count(Title) from eventtable ");
             	ResultSet kt=tk.executeQuery();
             	 if(kt.next()){
             		 events=kt.getInt(1);
             	 }
             	 
             	PreparedStatement lk=con.prepareStatement("select count(name) from emergency ");
             	ResultSet kl=lk.executeQuery();
             	 if(kl.next()){
             		 security=kl.getInt(1);
             	 }
             	PreparedStatement ko=con.prepareStatement("select count(nnotice) from notice ");
             	ResultSet ok=ko.executeQuery();
             	 if(ok.next()){
             		 notice=ok.getInt(1);
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
        <div class="sub"><br><b>Total Blocks:</b><br><br>
       <b class="bold"> 2 Blocks</b>
       </div>
       <div class="sub"><br><b>Total Flats:</b><br><br>
       <b class="bold"> 40 Flats</b>
       </div>
       <div class="sub"><br><b>Total Flats Filled:</b><br><br>
       <b class="bold"><%= fla %>Flats</b>
       </div>
       <div class="sub"><br><b>Flats in Block A:</b><br><br>
       <b class="bold"><%= afla %>Flats</b>
       </div>
       <div class="sub"><br><b>Flats in Block B:</b><br><br>
       <b class="bold"><%= bfla %>Flats</b></div>
       
       <div class="ab">
       <div class="sab">
       <br>
       <b style="color:skyblue;font-size:25px;">Block A</b><br><br><br>
       Total No Of Flats:20<br><br>
       Total Flats Occupied:<%=afla %><br><br>
       Total Flats Unoccupied:<%=20-afla %>
       
       </div>
       <div class="sab">
       <br>
        <b style="color:skyblue; font-size:25px;">Block B</b><br><br><br>
       Total No Of Flats:20<br><br>
       Total Flats Occupied:<%=bfla %><br><br>
       Total Flats Unoccupied:<%=20-bfla %>
       
       </div>
       
       </div>..
       <div class="last"><br><b>Total Complaints:</b><br><br>
       <center><b class="bold"><%= complaints %></b></center></div>
       
       <div class="last"><br><b>Total Parking Plots:</b><br><br>
      <center><b class="bold"><%= parking %></b> </center></div>
      
      <div class="last"><br><b>Total Vendors:</b><br><br>
      <center><b class="bold"><%= vendors %></b> </center></div>
      
      <div class="last"><br><b>Total Events:</b><br><br>
      <center><b class="bold"><%= events %></b> </center></div>
       
       <div class="last"><br><b>Total Securities:</b><br><br>
      <center><b class="bold"><%= security %></b> </center></div>
       
       <div class="last"><br><b>Total Notices:</b><br><br>
      <center><b class="bold"><%= notice %></b> </center></div>
       
       </div>
        </div>
       
        




    </body>
</html>