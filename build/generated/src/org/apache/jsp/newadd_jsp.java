package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class newadd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         ");

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
                   
      out.write(" \n");
      out.write("                   <input type=\"text\" value='\"+a[0]+\"'>\n");
      out.write("                   ");

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
                    out.println(e);
                }
            } finally {
                
            }
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
