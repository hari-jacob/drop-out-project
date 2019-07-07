<%-- 
    Document   : home
    Created on : May 26, 2018, 10:56:18 AM
    Author     : Hari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        String n =(String)session.getAttribute("name");
    %>
    <body bgcolor="green">
        <h1>***HOME PAGE***</h1>
        <h2>STUDENTS SYSTEM</h2>
        <a href="addstu.jsp"><%=n%></a>
        <a href="viewstu.jsp">VIEW STUDENT</a>
        <a href="delstu.jsp">DELETE STUDENT</a>
        <%--<a href="login.jsp">UPDATE STUDENT</a>--%>
    </body>
</html>
