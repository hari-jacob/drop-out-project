<%-- 
    Document   : login
    Created on : May 25, 2018, 12:59:11 PM
    Author     : Hari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>***LOGIN PAGE**</h1>
        <form action="login_valid.jsp">
        <table>
               <tr><td>Email</td><td> <input type="text" name="email"></td></tr>
               <tr><td>Pwd</td><td> <input type="password" name="pwd"></td></tr>
               <tr><td><input type="submit" value="submit"></td></tr>
        </table>
        </form>    
    </body>
</html>
