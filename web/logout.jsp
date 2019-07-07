<%-- 
    Document   : logout
    Created on : Sep 17, 2018, 9:16:35 AM
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
                    String name =(String)session.getAttribute("name");
                    String status="0";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook", "root", "admin");
                    Statement st = con.createStatement();
                    int i = st.executeUpdate("update customer set status='"+status+ "' where name='"+name+"' ");
                    if (i > 0 && status=="0")
                    {
                        response.sendRedirect("initial.html");
                    } else {
                        response.sendRedirect("loggedin.jsp");

                    }

                   
                } catch (Exception e) {
                    out.println(e);
                }
            } finally {
                
            }
        %>
    </body>
</html>
