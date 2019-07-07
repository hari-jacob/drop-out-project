<%-- 
    Document   : logvali
    Created on : Sep 16, 2018, 12:53:51 AM
    Author     : Hari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String name= request.getParameter("uname");
            String psw= request.getParameter("psw");
            String status="1";
            String id1="1";
            String id2="2";
            String id3="3";
            session.setAttribute("name", name);
            session.setAttribute("status",status);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook", "root", "admin");
            Statement st = con.createStatement();
            int i = st.executeUpdate("update customer set status='"+status+ "' where name='"+name+"' ");
            ResultSet rs1 = st.executeQuery("select available from books");
            i=0;
            String a[];
            a= new String[10];
            while (rs1.next())
            {
                a[i]=rs1.getString(1);
                i=i+1;
            }
            session.setAttribute("str1",a[0]);
            session.setAttribute("str2",a[1]);
            session.setAttribute("str3",a[2]);
            session.setAttribute("str4",a[3]);
            session.setAttribute("str5",a[4]);
            session.setAttribute("str6",a[5]);
            ResultSet rs2 = st.executeQuery("select b1,b2,b3,b4,b5,b6 from customer where name='"+name+"' ");
                    int k=0;
                    String b[];
                    b= new String[10];
                    while (rs2.next())
                    {
                        b[k]=rs2.getString(1);
                        k=k+1;
                        b[k]=rs2.getString(2);
                        k=k+1;
                        b[k]=rs2.getString(3);
                        k=k+1;
                        b[k]=rs2.getString(4);
                        k=k+1;
                        b[k]=rs2.getString(5);
                        k=k+1;
                        b[k]=rs2.getString(6);
                        k=k+1;
                    }
                    session.setAttribute("b1",b[0]);
                    session.setAttribute("b2",b[1]);
                    session.setAttribute("b3",b[2]);            
                    session.setAttribute("b4",b[3]);            
                    session.setAttribute("b5",b[4]);            
                    session.setAttribute("b6",b[5]);            
            ResultSet rs = st.executeQuery("select *  from customer where name='"+name+"' and password='"+psw+"'");
            
            if (rs.next())
            {
                response.sendRedirect("loggedin.jsp");
            } else {
                response.sendRedirect("initial.html");
            }
            
        %>
        
    </body>
</html>
