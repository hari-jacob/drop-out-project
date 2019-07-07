    <%-- 
        Document   : addstu
        Created on : May 26, 2018, 11:14:56 AM
        Author     : Hari
    --%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
            <script type="text/javascript">

                function validate()
                {   
                    var name=document.forms["add1"]["n"].value;
                    var i = name.length;

                
                    if(name=="")
                    { 
                        alert("hello hi:");
                        return false;
                    }
                }
            </script>
        </head>
        <body bgcolor="sky blue">
            <h1>ENTER STUDENT DETAILS</h1>
            <form name="add1" action="add.jsp" onsubmit="return validate()">
                <table>
                    <tr><td>Name</td><td> <input type="text" name="n"></td></tr>
                    

                   <tr> <td><input type="submit" value="submit"></td></tr>
                    <a href="addstu.jsp">ADD STUDENT</a>
                    <a href="viewstu.jsp">VIEW STUDENT</a>
                    <a href="delstu.jsp">DELETE STUDENT</a>

                </table>
            </form>
        </body>
    </html>