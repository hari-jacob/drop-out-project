<%-- 
    Document   : newadd
    Created on : Sep 15, 2018, 11:46:59 PM
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
                    String name = request.getParameter("uname");
                    String email = request.getParameter("mail");
                    String phno = request.getParameter("ph");
                    String password = request.getParameter("psw");
                    String status="1";
                    String id1="1";
                    String id2="2";
                    String id3="3";
                    session.setAttribute("name", name);
                    session.setAttribute("status",status);
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook", "root", "admin");
                    Statement st = con.createStatement();
                    ResultSet rs1 = st.executeQuery("select available from books");
                    
                    int j=0;
                    String a[];
                    a= new String[10];
                    while (rs1.next())
                    {
                        a[j]=rs1.getString("available");
                        j=j+1;
                    }
                   %> 
                   <input type="text" value="<%=a[0]%>">
                   <%
                    out.println("hello"+a[1]);
                    out.println("hello"+a[2]);
                    
                    session.setAttribute("str1",a[0]);
                    session.setAttribute("str2",a[1]);
                    session.setAttribute("str3",a[2]);
                    
                    int k=0;
                    session.setAttribute("b1",k);
                    session.setAttribute("b2",k);
                    session.setAttribute("b3",k);
                    int i = st.executeUpdate("insert into customer values('" + name + "','" + email + "','" + phno + "','" + password + "','" +status+ "','" +k+ "','" +k+ "','" +k+ "','" +k+ "','" +k+ "','" +k+ "')");
                    if (i > 0 && status=="1")
                    {
                        response.sendRedirect("initial.html");
                    } else {
                        response.sendRedirect("error.html");
                    }

                   
                } catch (Exception e) {
                    out.println("Exception found dafaw:"+e);
                }
            } finally {
                
            }
        %>
    </body>
</html>
