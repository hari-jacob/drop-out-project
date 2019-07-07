package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addstu_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script>\n");
      out.write("            \n");
      out.write("            function validate()\n");
      out.write("            {\n");
      out.write("                var name=document.forms[\"add1\"][\"n\"].value;\n");
      out.write("               if(name==\"\")\n");
      out.write("                { \n");
      out.write("                    alert(\"!!!NO FIELDS SHOULD BE EMPTY!!!\");\n");
      out.write("                     return false;\n");
      out.write("                }\n");
      out.write("                var roll=document.getElementById(\"r\");\n");
      out.write("                 \n");
      out.write("                var dept=document.getElementById(\"d\");\n");
      out.write("                var year=document.getElementById(\"y\");\n");
      out.write("                var email=document.getElementById(\"e\");\n");
      out.write("                var ph=document.getElementById(\"ph\");\n");
      out.write("\n");
      out.write("                \n");
      out.write("               \n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"sky blue\">\n");
      out.write("        <h1>ENTER STUDENT DETAILS</h1>\n");
      out.write("        <form name=\"add1\" onsubmit=\"return validate()\" action=\"add.jsp\">\n");
      out.write("            <table>\n");
      out.write("                <tr><td>Name</td><td> <input type=\"text\" id=\"n\"></td></tr>\n");
      out.write("                <tr><td>Roll No</td><td><input type=\"text\" id=\"r\"> </td></tr>\n");
      out.write("                <tr><td>Dept</td><td> <input type=\"text\" id=\"d\"></td></tr>\n");
      out.write("                <tr><td>Year</td><td> <input type=\"text\" id=\"y\"></td></tr>\n");
      out.write("                <tr><td>Email</td><td> <input type=\"text\" id=\"e\"></td></tr>\n");
      out.write("                <tr><td>Ph no</td><td> <input type=\"text\" id=\"ph\"></td></tr>\n");
      out.write("                <tr> <td><input type=\"submit\" value=\"submit\"></td></tr>\n");
      out.write("                <a href=\"addstu.jsp\">ADD STUDENT</a>\n");
      out.write("                <a href=\"viewstu.jsp\">VIEW STUDENT</a>\n");
      out.write("                <a href=\"delstu.jsp\">DELETE STUDENT</a>\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
