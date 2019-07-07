<%-- 
    Document   : bname
    Created on : Sep 26, 2018, 12:29:41 AM
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
    <%
        String bg= request.getParameter("bg");
    %>
html{   
background: url("<%=bg%>") no-repeat center center fixed; webkit-background-size: cover;o-background-size: cover; background-size: cover;
overflow-x:hidden;
overflow-y:scroll;
}

body {
    font-family: viner hand itc;
    font-size: 25px;

}
p{
    font-family: imprint mt shadow;
    color:black;
}
h3{
    text-align:center;
    color:red;
}

h2{
    font-family: chiller,viner hand itc;
    color:black;
    text-shadow: -2px 0 white,0 2px white,2px 0 white, 0 -2px white;
    width:50px;
    height:50px;
    border-radius: 50%;
    background-color: white;
}


.desc {
    padding: 15px;
    text-align: center;
}

form{
    border-radius:20px;
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
img.avat {
    position: static;
    border-radius:15px;
    border:1px solid #f1f1f1;
    opacity: .8;
    
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
    width: 100%;
    color:#D4AF37;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #333;
    box-sizing: border-box;
    border-radius:10px;
}	

/* Set a style for all buttons */
button {
    background-color: black;
    font-family: vine hand itc;
    color:white;
    padding: 12px 20px;
    margin: 0px 0;
    border-radius:5px;
    border: 1px solid #f1f1f1;
    cursor: pointer;
    width: auto;
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
.anchor{
        display:block;
        padding-top: 100px;
        margin-top: -100px;
    }  
</style>
    </head>
    <body>
        
        <%
            String av= request.getParameter("avail");
            String cbs= request.getParameter("custbookstat");
            String cbname= request.getParameter("cbname");
            String bname= request.getParameter("bname");
            String id= request.getParameter("id");
            String descrp= request.getParameter("descrp");
            
            String name =(String)session.getAttribute("name");
//            String cb=(String)session.getAttribute("b1");
            int cbb[];
           cbb= new int[10];
        cbb[0]=Integer.parseInt(cbs);
        
        %>
     
        <div style="margin-top:18%;">
    <form name="b1" class="modal-content animate img" style="width: 400px;border: 2px solid lightpink;"  action="buy.jsp" onsubmit="return b1valid()">

        <div class="clearfix"></div>
    <h3 style="text-align:center;"><%=bname%></h3>
    <div class="clearfix"></div>
    <p>
        <strong><%=descrp%></strong></p>
    <div class="clearfix"></div>
    <p>
    <b>Available:<%=av%></b><br>
    Hurry UP!<br>
    </p>
      
      <div class="container">
        <button type="submit" style="margin-left:30%;"><b>Wanna Buy?</b></button>
        <br>
        <label id="demo"></label>
      </div>
    </form>
        </div>
<script type="text/javascript">
function b1valid()
{
    var bought;
<%
    if(cbb[0]==1)
    {
%>
    bought="Already bought";
    document.getElementById("demo").innerHTML = bought;
//    alert("book already in ur cart"); 
    return false;
<%    }
    else{
            session.setAttribute("id", id);
            session.setAttribute("bname", cbname);
            session.setAttribute("av", av);
         }
%>
}
</script>
    </body>
</html>
