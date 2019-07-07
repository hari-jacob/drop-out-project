<%-- 
    Document   : databaseconnectivity
    Created on : Oct 23, 2018, 2:57:46 AM
    Author     : Hari
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Db conn</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook", "root", "admin");
            Statement st=con.createStatement();
            int id=1;
            int id2=2;
            ResultSet rs=st.executeQuery("select * from books where id='"+id+"' or id='"+id2+"'");
            String a[]=new String[10];
            while(rs.next())
            {
             a[0]=rs.getString("bname");
             a[1]=rs.getString("available");
             a[2]=rs.getString("genre");
            
            
        %>
            <br><p>BNAME<%=a[0]%></p>
            <br><p>AVAIL<%=a[1]%></p>
            <br><p>GENRE<%=a[2]%></p>
            <button type="button">helo</button>
        <%
            }
            int i=st.executeUpdate("update books set available='"+5+"' where id='"+id2+"'");
            
        %>
    </body>
</html>
