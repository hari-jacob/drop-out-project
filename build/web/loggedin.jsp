<%-- 
    Document   : loggedin
    Created on : Sep 17, 2018, 8:38:00 AM
    Author     : Hari
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
html{
    
background: url("background1.jpg") no-repeat center center fixed; webkit-background-size: cover;o-background-size: cover; background-size: cover;
overflow-x:hidden;
overflow-y:scroll;
}

body {
    font-family: chiller,viner hand itc;
    font-size: 30px;

}
p{
    color:white;
}
h3{color:white;}

h2{
    font-family: colonna mt,chiller,viner hand itc;
    color:black;
    text-shadow: -2px 0 white,0 2px white,2px 0 white, 0 -2px white;
    width:50px;
    height:50px;
    border-radius: 30%;
    background-color: white;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #f5fffa;
    border-bottom-left-radius: 15px;
    border-bottom-right-radius: 15px;
    border-top-left-radius: 15px;
    border-top-right-radius: 15px;
    border:2px solid buttonshadow;
}

li {
    float: left;
}

li a , .dropbtn{
    display: block;
    background-color:#fffafa;
    font-weight: bold;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    border-radius:15px;
}

li a:hover, .dropdown:hover .dropbtn {
    cursor:pointer;
    color:#fffafa;
    font-weight:none;
    background-color:black;
}

li.dropdown
{
    display: inline-block;
}

.dropdown-content {
border-radius:15px;
    display: none;
    position: absolute;
    color:#222;
    opacity: 0.89;
    background-color:#fffafa ;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}


.dropdown-content a{
    display: block;
    background-color:#fffafa;
    font-weight: bold;
    color: black;
    opacity: 0.89;
    text-align: left;
    padding: 14px 16px;
    text-decoration: none;
}

.dropdown-content a:hover {
    cursor:pointer;
    color:#fffafa;
    font-weight:none;
    border:2px solid grey;
    background-color:black;
}

.dropdown:hover .dropdown-content {
    display: block;
}
.desc {
    padding: 15px;
    text-align: center;
}

form{
    border-radius:15px;
    background-color: #333;
    opacity: .85;

}

img.av {
    width:50px;
    height:50px;
    border-radius: 50%;
    
}
img.avatar {
    width:100%;
    position: static;
    border-radius:15px;
    border:none;
    
}

img.avatdrp {
    position: static;
    border-radius:15px;
    border:none;
    
}
label{
    font-family: poor richard,papyrus,comic sans ms;
    color:#D4AF37;
}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: auto;
    color:white;
    background-color: #f1f1f1;
    padding: 15px 20px;
    margin-left: 20px;
    opacity:.899;
    display:inline-block;
    border: 1.5px solid black;
    box-sizing: border-box;
    border-radius:15px;
}	

/* Set a style for all buttons */
button {
    background-color: black;
    font-family: vine hand itc;
    color:white;
    padding: 12px 20px;
    margin-left:20px;
    border-radius:5px;
    border: 1px solid #f1f1f1;
    cursor: pointer;
    width: auto;
}

.style{
    font-family:viner hand itc;
}

div.gallery {
    border: 3px solid #ccc;
}

div.gallery:hover {
    border: 5px solid #777;
}

div.gallery img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}

* {
    box-sizing: border-box;
}

.responsive {
    padding: 0 6px;
    float: left;
    width: 33.33%;
}

@media only screen and (max-width: 700px) {
    .responsive {
        width: 50%;
        margin: 6px 0;
    }
}

@media only screen and (max-width: 600px) {
    .responsive {
        width: 100%;
    }
}

.clearfix:after {
    content: "";
    display: table;
    clear: both;
}


.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align:center;
    margin: 24px 0 12px 0;
    position: relative;
}

.container .content {
  position:relative;
  bottom: 0;
  background: rgb(0, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0.5); /* Black background with 0.5 opacity */
  color: #f1f1f1;
  width: 100%;
  padding: 20px;
  border-radius: 15px;
}


.container {
    padding: 16px;
    
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 50%; /* Could be more or less, depending on screen size */
}

.mod {
    display: none; /* Hidden by default */
    position: static; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.mod-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 50%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: -1;
    color: green;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: progress;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.8s;
    animation: animatezoom 0.8s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
    .bot{
        position:fixed;
        color:#111;
        background-color: white;
    }    
</style>
</head>

<body>


<h2>DROPout</h2>
  <p>Purchcase Here. Read Anywhere.</p>
<%
        String name =(String)session.getAttribute("name");
        String status =(String)session.getAttribute("status");
        String Name=name.toUpperCase();
        String av1 =(String)session.getAttribute("str1");
        session.setAttribute("str1",av1);
        String av2 =(String)session.getAttribute("str2");
        String av3 =(String)session.getAttribute("str3");
        String av4 =(String)session.getAttribute("str4");
        String av5 =(String)session.getAttribute("str5");
        String av6 =(String)session.getAttribute("str6");
        String cb[];
           cb= new String[10];

        cb[0] =(String)session.getAttribute("b1");
        cb[1] =(String)session.getAttribute("b2");
        cb[2] =(String)session.getAttribute("b3");
        cb[3]=(String)session.getAttribute("b4");
        cb[4]=(String)session.getAttribute("b5");
        cb[5]=(String)session.getAttribute("b6");
        String bo[];
           bo= new String[10];
        bo[0]="Sherlock Holmes";
        bo[1]="Shiva Triology";
        bo[2]="Harry Potter";
        bo[3]="Hunger Games";
        bo[4]="Time Travel";
        bo[5]="Time Travel";
        session.setAttribute("name", name);

        int cbb[];
           cbb= new int[10];
        cbb[0]=Integer.parseInt(cb[0]);
        cbb[1]=Integer.parseInt(cb[1]);
        cbb[2]=Integer.parseInt(cb[2]);
        cbb[3]=Integer.parseInt(cb[3]);
        cbb[4]=Integer.parseInt(cb[4]);
        cbb[5]=Integer.parseInt(cb[5]);
%>  

<ul>
  <li><a >Home</a></li>
  <li><a onclick="document.getElementById('booklist').style.display='block'" style="width:auto;">Books</a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Me</a>
    <div class="dropdown-content">
      <a onclick="document.getElementById('mybook').style.display='block'" style="width:auto;">My Books</a>
      <a href="#">My Details</a>
    </div>
  </li>
  <li><a onclick="document.getElementById('about').style.display='block'" style="width:auto;">About</a></li>
  <li style="float:right">
  <div class="dropdown">
  <img src="hood.jpg" class="av" alt="avatar">
  <div class="dropdown-content" style="right:0">
    <img src="hood.jpg" class="avatdrp" alt="avatar" width="300" height="200">
    <div class="desc">Welcome <b><%=Name%></b></div>
    <div ><a href="logout.jsp">Sign Out?</a></div>
  </div>
  </div>
  </li>
</ul>

<div id="mybook" class="modal">
    
    <form name="myboo" class="modal-content animate img" style="width: 500px">
    <div class="imgcontainer">
     <span onclick="document.getElementById('mybook').style.display='none'" class="close" title="Close Modal">&times;</span>
     <img src="hood.jpg" alt="Avatar" class="avatar">
    </div>

    <h3 style="text-align: center;color:blueviolet;text-shadow: -1px 0 red,0 1px yellow,1px 0 yellow, 0 -1px yellow;">My Books</h3>
    <p style="color:black;">The books u have are:</p>
    <%
       
        int i=0;
        int flag=0;
        
        for(i=0;i<6;i++)
        {
            if(cbb[i]==1)
            {
    %>
    <p style="text-align:left;margin-left: 25px;color: deepskyblue;text-shadow: -1px 0 black,0 1px black,2px 0 black, 0 -1px black;"> Book ID :b<%=i+1%>  - Name:  <%=bo[i]%></p>
    <%      flag=1;
            }
        }
        
        if(flag==1)
        {
    %>  
        <input style="color:black;" type="text" class="style" name="bokid" placeholder="Enter The Book Id" required>
    
        <button onclick="remove.jsp">Remove The Book</button>
    <%  }
        if(flag!=1)
        {
    %>
            <p style="text-align:left;margin-left:30px;size:15px;color: darkblue;text-shadow: -2px 0 blue,0 2px red,2px 0 yellow, 0 -2px greenyellow;"> Get some books dude </p>
    <%
        }
    %>          
      <div class="container">
        <button onclick="document.getElementById('mybook').style.display='none'"><b>Ok</b></button>
      </div>
</form>
</div>    
<h3 style="text-align: center;color:blueviolet;text-shadow: -1px 0 white,0 1px white,2px 0 whitesmoke, 0 -1px white;">Welcome Mr.<%=Name%></h3>

<div id="booklist" class="mod">
<div class="imgcontainer">
     <span onclick="document.getElementById('booklist').style.display='none'" class="close" title="Close Modal">&times;</span>
</div>
<div class="clearfix"></div>
    
<p>Select the book of ur choice .</p>
<form id="b1" target="_blank" method="POST" action="bname.jsp">
<div class="responsive">
  <div class="gallery">
      <input type="hidden" name="avail" value="<%=av1%>">
      <input type="hidden" name="custbookstat" value="<%=cb[0]%>">
      <input type="hidden" name="cbname" value="b1">
      <input type="hidden" name="bname" value="<%=bo[0]%>">
      <input type="hidden" name="id" value="1">
      <input type="hidden" name="descrp" value="Genre:Mystery,Crime,Thriller">
      <input type="hidden" name="bg" value="sherbg.jpg">    
      <div ><button type="submit" style="width:auto;border:none;padding: 0px 0;"><img src="sherl.jpg" alt="Cinque Terre" width="600" height="600"></button></div>
    <div style="color:white;" class="desc">Sherlock Holmes</div>
  </div>
</div>
</form>


<form id="b2" target="_blank" method="POST" action="bname.jsp">
<div class="responsive">
  <div class="gallery">
      <input type="hidden" name="avail" value="<%=av2%>">
      <input type="hidden" name="custbookstat" value="<%=cb[1]%>">
      <input type="hidden" name="cbname" value="b2">
      <input type="hidden" name="bname" value="<%=bo[1]%>">
      <input type="hidden" name="id" value="2">
      <input type="hidden" name="descrp" value="Genre: Fiction,History">
      <input type="hidden" name="bg" value="shivabg.gif">
    <div ><button type="submit" style="width:auto;border:none;padding: 0px 0;"><img src="shiv.jpg" alt="Cinque Terre" width="600" height="600"></button></div>
    <div style="color:white;" class="desc">Shiva Triology</div>
  </div>
</div>
</form>

<form id="b3" target="_blank" method="POST" action="bname.jsp">
<div class="responsive">
  <div class="gallery">
      <input type="hidden" name="avail" value="<%=av3%>">
      <input type="hidden" name="custbookstat" value="<%=cb[2]%>">
      <input type="hidden" name="cbname" value="b3">
      <input type="hidden" name="bname" value="<%=bo[2]%>">
      <input type="hidden" name="id" value="3">
      <input type="hidden" name="descrp" value="2">
      <input type="hidden" name="bg" value="harrybg.png">
      <div ><button type="submit" style="width:auto;border:none;padding: 0px 0;"><img src="harry2.jpeg" alt="Cinque Terre" width="600" height="600"></button></div>
    <div style="color:white;" class="desc">Harry Potter</div>
  </div>
</div>
</form>
<div class="clearfix"></div>     
<pre>



</pre>
 <form id="b4" target="_blank" method="POST" action="bname.jsp">
<div class="responsive">
  <div class="gallery">
      <input type="hidden" name="avail" value="<%=av4%>">
      <input type="hidden" name="custbookstat" value="<%=cb[3]%>">
      <input type="hidden" name="cbname" value="b4">
      <input type="hidden" name="bname" value="<%=bo[3]%>">
      <input type="hidden" name="id" value="4">
      <input type="hidden" name="descrp" value="Genre:Action,Drama">
      <input type="hidden" name="bg" value="hungerbg.jpg">
      <div ><button type="submit" style="width:auto;border:none;padding: 0px 0;"><img src="hunger.png" alt="Cinque Terre" width="600" height="600"></button></div>
    <div style="color:white;" class="desc">Hunger Games</div>
  </div>
</div>
 </form>
      
 <form id="b5" target="_blank" method="POST" action="bname.jsp">
<div class="responsive">
  <div class="gallery">
      <input type="hidden" name="avail" value="<%=av5%>">
      <input type="hidden" name="custbookstat" value="<%=cb[4]%>">
      <input type="hidden" name="cbname" value="b5">
      <input type="hidden" name="bname" value="<%=bo[4]%>">
      <input type="hidden" name="id" value="5">
      <input type="hidden" name="descrp" value="Genre:Sci-fi,Fiction">
      <input type="hidden" name="bg" value="timebg.jpg">
      <div ><button type="submit" style="width:auto;border:none;padding: 0px 0;"><img src="time1.jpg" alt="Cinque Terre" width="600" height="600"></button></div>
    <div style="color:white;" class="desc">Time Travel</div>
  </div>
</div>
</form>
 
<form id="b6" target="_blank" method="POST" action="bname.jsp">
<div class="responsive">
  <div class="gallery">
      <input type="hidden" name="avail" value="<%=av6%>">
      <input type="hidden" name="custbookstat" value="<%=cb[5]%>">
      <input type="hidden" name="cbname" value="b6">
      <input type="hidden" name="bname" value="<%=bo[5]%>">
      <input type="hidden" name="id" value="6">
      <input type="hidden" name="descrp" value="Genre:Programming,Education">
      <input type="hidden" name="bg" value="cbg.jpg">
      <div ><button type="submit" style="width:auto;border:none;padding: 0px 0;"><img src="c1.jpg" alt="Cinque Terre" width="600" height="600"></button></div>
    <div style="color:white;" class="desc">C Programming</div>
  </div>
</div>
</form>      
      <div class="clearfix"></div>
<pre>



</pre>
      <p style="position:center;">Happy Shopping</p>
      <div class="clearfix"></div>
      <p style="position:center;">Contact Us For Any Issues</p>
</div>
      
<div id="about" class="mod">
<div class="clearfix"></div>
<div class="imgcontainer">
     <span onclick="document.getElementById('about').style.display='none'" class="close" title="Close Modal">&times;</span>
</div>
<div class="clearfix"></div>
<p>Purchase here <strong>EBooks which u cant get anywhere</strong>.</p>
<p>The  DropOut  is  a  series  of  e-readers  designed  and  marketed by Drop.
Dropout devices enable users to browse, buy, download, and read e-books,
newspapers, magazines </p><p>and other digital media via wireless networking to the Kindle Store. The hardware platform, developed by Drop subsidiary Lab126,</p><p> began as a single device in 2007 and now comprises a range of devices, including e-readers with E Ink</p><p> electronic paper displays and Dropout applications on all major computing platforms.</p><p> All Dropout devices integrate with Dropout Store content, and as of March 2018, the store has over million e-books available in the store.</p>
<div class="clearfix"></div>
<p style="color:red;text-align: center;text-shadow: -.5px 0 white,0 .5px white,.5px 0 white, 0 -.5px white;">This Page is Developed by Harinath D |||year CSE Of Rajalakshmi Engineering College.</p>
<p style="color:white;text-align: center;">The Documentation is Done by Hiran Kumar |||year CSE Of Rajalakshmi Engineering College.</p>
</div>    
</body>
</html>