<%-- 
    Document   : logout
    Created on : Sep 17, 2018, 9:16:35 AM
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
            try {
                try {
                    String idi =(String)session.getAttribute("id");
                    int id=Integer.parseInt(idi);
                    String ava =(String)session.getAttribute("av");
                    String bookstat ="1";
                    int av=Integer.parseInt(ava);
                    int buy=1;
                    int avnew;
                    avnew=av-buy;
                    String bname=(String)session.getAttribute("bname");
                    session.setAttribute("bn", bname);
                    String name =(String)session.getAttribute("name");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook", "root", "admin");
                    Statement st = con.createStatement();
                    int i = st.executeUpdate("update books set available='" +avnew+ "' where id='"+id+"' ");
                        
                    int j = st.executeUpdate("update customer set b"+id+"='" +bookstat+ "' where name='"+name+"' ");
                    
                    
                    ResultSet rs1 = st.executeQuery("select password from customer where name='"+name+"'");
                    while(rs1.next())
                    {String pwd=rs1.getString(1);
                    session.setAttribute("pwd", pwd);}
                    session.setAttribute("name", name);
                    
                    if (i > 0)
                    {
                        response.sendRedirect("thanks.jsp");
                    } else {
                        response.sendRedirect("initial.html");

                    }

                   
                } catch (Exception e) {
                    out.println(e);
                }
            } finally {
                
            }
        %>
    </body>
</html>
