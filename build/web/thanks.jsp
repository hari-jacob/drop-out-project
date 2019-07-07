<%-- 
    Document   : thanks
    Created on : Sep 26, 2018, 11:19:55 PM
    Author     : Hari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>thanks</title>
        <style>
            h1{
                text-align: center;
                font-family:castellar; 
            }
            input{
                border:2px solid black;
                background-color:#fefefe;
                padding: 15px;
                margin-left:30%; 
            }
            button {
    background-color: black;
    font-family: vine hand itc;
    color:white;
    margin-left:40%;
    padding: 20px 20px;
    border-radius:5px;
    border: 1px solid #f1f1f1;
    cursor: pointer;
    width: auto;
}
        </style>
    </head>
    <body>
        <%
          String name =(String)session.getAttribute("name");
          String pwd =(String)session.getAttribute("pwd");
        %>
        <h1>Thank you For The Purchase</h1>
        <form method="POST" action="logvali.jsp">
            <input type="hidden" name="psw" value="<%=pwd%>">
            <input type="hidden" name="uname" value="<%=name%>">
            <br>
            <br>
            <br>
            <button type="submit">Click to Continue Shopping</button>
        </form>   
    </body>
</html>
