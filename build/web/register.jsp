<%-- 
    Document   : register
    Created on : May 25, 2018, 12:40:05 PM
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
        <h1>STAFF REGISTER SYSTEM</h1>

        <a href="index.jsp">Home</a>
        <a href="register.jsp">Register</a>
        <a href="login.jsp">Login</a>
        <form action="register">
            <table>
                <tr><td>Name</td><td> <input type="text" name="name"></td></tr>
                <tr><td>Phone</td><td> <input type="text" name="ph"></td></tr>
                <tr><td>Add</td><td><input type="text" name="add"> </td></tr>
                <tr><td>Email</td><td> <input type="text" name="email"></td></tr>
                <tr><td>Pwd</td><td> <input type="password" name="pwd"></td></tr>
                <tr> <td><input type="submit" value="submit"></td></tr>
                
            </table>
        </form>
    </body>
</html>
