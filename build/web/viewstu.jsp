<%-- 
    Document   : viewstu
    Created on : May 26, 2018, 11:29:34 AM
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
            body{color: red}
        </style>
            
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="yellow">
        <h1>***STUDENT DETAILS***</h1>

        <table>
            <%--<tr><td>name</td><td> <input type="text" name="name"></td></tr>
            <tr><td>phno</td><td> <input type="text" name="ph"></td></tr>
            <tr><td>id</td><td><input type="text" name="id"> </td></tr>
            <tr><td>email</td><td> <input type="text" name="email"></td></tr>
            <tr> <td><input type="submit" value="submit"></td></tr>
            --%>
            <%
                String name = "NAME";
                String id = "ID";
                String dept = "DEPT";
                String year = "YEAR";
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/product", "root", "admin");
                Statement st = con.createStatement();
                ResultSet rs1 = st.executeQuery("select * from studeta");
                
            %>
            <tr><td><%=name%></td><td><%=id%></td><td><%=dept%></td><td><%=year%></td></tr>
            <%
    while (rs1.next()) {
            %>       
            
            <tr><td><%=rs1.getString(1)%></td> 
                <td><%=rs1.getString(2)%></td>
                <td><%=rs1.getString(3)%></td> 
                <td><%=rs1.getString(4)%></td></tr>
                <%
                        //out.println(rs1.getString(1) + " " + rs1.getString(2) + " " + rs1.getString(3)+" "+ rs1.getString(4));
                    }
                %>
            <tr><td><%="\n\n\n\n"%></td></tr>
            <tr><td><%="NAVIGATE"%></td></tr>
            <tr><td> <a href="addstu.jsp">ADD STUDENT</a></td></tr>
            <tr><td> <a href="viewstu.jsp">VIEW STUDENT</a></td></tr>
            <tr><td> <a href="delstu.jsp">DELETE STUDENT</a></td>></tr>

        </table>

    </body>
</html>