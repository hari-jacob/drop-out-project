<%-- 
    Document   : remove.jsp
    Created on : Oct 3, 2018, 7:55:27 PM
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
        <title>Remove Book</title>
    </head>
    <body>
        <%String bid= request.getParameter("bokid");
        String j="0";
        String name =(String)session.getAttribute("name");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook", "root", "admin");
        Statement st = con.createStatement();
        ResultSet rs1 = st.executeQuery("select password from customer where name='"+name+"'");
        while(rs1.next())
        {String pwd=rs1.getString(1);
        session.setAttribute("pwd", pwd);}
        session.setAttribute("name", name);
                    
        int i = st.executeUpdate("update customer set "+bid+"='" +j+ "' where name='"+name+"' ");
        
        if (i > 0)
        {
              response.sendRedirect("thanks.jsp");
        }
        %>
        <p>Error In Removing The Book</p>
    </body>
</html>
