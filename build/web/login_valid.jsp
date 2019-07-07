<%-- 
    Document   : login_valid
    Created on : May 26, 2018, 10:46:30 AM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String email = request.getParameter("email");
            String pass = request.getParameter("pwd");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/product", "root", "admin");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select *  from proddeta where email='"+email+"' and pass='"+pass+"'");
            if (rs.next()) {
                response.sendRedirect("home.jsp");
            } else {
                response.sendRedirect("login.jsp");

            }
        %>
    </body>
</html>