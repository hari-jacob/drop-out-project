<%-- 
    Document   : delstu
    Created on : May 26, 2018, 11:42:14 AM
    Author     : Hari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{color: red}
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="yellow">
        <h1>DELETING STUDENT DETAILS</h1>
        <form action="delete.jsp">
            <table>
                <tr><td>Rollno</td><td> <input type="text" name="rollno"></td></tr>
                <tr><td><input type="submit" name="ENTER"></td></tr>
                <a href="addstu.jsp">ADD STUDENT</a>
                <a href="viewstu.jsp">VIEW STUDENT</a>
                <a href="delstu.jsp">DELETE STUDENT</a>

            </table>
        </form>    
    </body>
</html>
