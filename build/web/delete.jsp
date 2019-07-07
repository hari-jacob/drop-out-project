<%-- 
    Document   : delete
    Created on : May 26, 2018, 1:03:30 PM
    Author     : Hari
--%>

<%@page import="java.sql.*"%>
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
                    String rollno = request.getParameter("rollno");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/product", "root", "admin");
                    Statement st = con.createStatement();
                    int i = st.executeUpdate("delete from studeta where rollno='"+rollno+"'");
                    if (i > 0) {
                        response.sendRedirect("viewstu.jsp");
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
