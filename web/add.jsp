<%-- 
    Document   : add
    Created on : May 26, 2018, 11:53:40 AM
    Author     : Hari
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                try {
                    String name = request.getParameter("name");
                    String rollno = request.getParameter("roll");
                    String dept = request.getParameter("dept");
                    String year = request.getParameter("year");
                    String email = request.getParameter("email");
                    String phno = request.getParameter("ph");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/product", "root", "admin");
                    Statement st = con.createStatement();
                    int i = st.executeUpdate("insert into studeta values('" + name + "'," + rollno + ",'" + dept + "','" + year + "','" + email + "','" + phno + "')");
                    if (i > 0)
                    {
                        response.sendRedirect("home.jsp");
                    } else {
                        response.sendRedirect("addstu.jsp");

                    }

                   
                } catch (Exception e) {
                    out.println(e);
                }
            } finally {
                
            }
        %>
    </body>
</html>
