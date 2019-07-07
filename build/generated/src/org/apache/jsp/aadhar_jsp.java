package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class aadhar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("        <script>\n");
      out.write("   function validat(){\n");
      out.write("       var array = document.forms[f1][name].value;\n");
      out.write("    alert(\"got into script\");         \n");
      out.write("    // multiplication table d\n");
      out.write("var d=[\n");
      out.write("    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],\n");
      out.write("    [1, 2, 3, 4, 0, 6, 7, 8, 9, 5], \n");
      out.write("    [2, 3, 4, 0, 1, 7, 8, 9, 5, 6], \n");
      out.write("    [3, 4, 0, 1, 2, 8, 9, 5, 6, 7], \n");
      out.write("    [4, 0, 1, 2, 3, 9, 5, 6, 7, 8], \n");
      out.write("    [5, 9, 8, 7, 6, 0, 4, 3, 2, 1], \n");
      out.write("    [6, 5, 9, 8, 7, 1, 0, 4, 3, 2], \n");
      out.write("    [7, 6, 5, 9, 8, 2, 1, 0, 4, 3], \n");
      out.write("    [8, 7, 6, 5, 9, 3, 2, 1, 0, 4], \n");
      out.write("    [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]\n");
      out.write("];\n");
      out.write("\n");
      out.write("// permutation table p\n");
      out.write("var p=[\n");
      out.write("    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9], \n");
      out.write("    [1, 5, 7, 6, 2, 8, 3, 0, 9, 4], \n");
      out.write("    [5, 8, 0, 3, 7, 9, 6, 1, 4, 2], \n");
      out.write("    [8, 9, 1, 6, 0, 4, 3, 5, 2, 7], \n");
      out.write("    [9, 4, 5, 3, 1, 2, 6, 8, 7, 0], \n");
      out.write("    [4, 2, 8, 6, 5, 7, 3, 9, 0, 1], \n");
      out.write("    [2, 7, 9, 3, 8, 0, 6, 4, 1, 5], \n");
      out.write("    [7, 0, 4, 6, 9, 1, 3, 2, 5, 8]\n");
      out.write("];\n");
      out.write("\n");
      out.write("// inverse table inv\n");
      out.write("var inv = [0, 4, 3, 2, 1, 5, 6, 7, 8, 9];\n");
      out.write("\n");
      out.write("// converts string or number to an array and inverts it\n");
      out.write("function invArray(array){\n");
      out.write("    \n");
      out.write("    if (Object.prototype.toString.call(array) == \"[object Number]\"){\n");
      out.write("        array = String(array);\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    if (Object.prototype.toString.call(array) == \"[object String]\"){\n");
      out.write("        array = array.split(\"\").map(Number);\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("\treturn array.reverse();\n");
      out.write("\t\n");
      out.write("}\n");
      out.write("\n");
      out.write("// generates checksum\n");
      out.write("function generate(array){\n");
      out.write("    \t\n");
      out.write("\tvar c = 0;\n");
      out.write("\tvar invertedArray = invArray(array);\n");
      out.write("\t\n");
      out.write("\tfor (var i = 0; i < invertedArray.length; i++){\n");
      out.write("\t\tc = d[c][p[((i + 1) % 8)][invertedArray[i]]];\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\treturn inv[c];\n");
      out.write("}\n");
      out.write("\n");
      out.write("// validates checksum\n");
      out.write("function validate(array) {\n");
      out.write("    \n");
      out.write("    var c = 0;\n");
      out.write("    var invertedArray = invArray(array);\n");
      out.write("    \n");
      out.write("    for (var i = 0; i < invertedArray.length; i++){\n");
      out.write("    \tc=d[c][p[(i % 8)][invertedArray[i]]];\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    return (c === 0);\n");
      out.write("}\n");
      out.write("}\n");
      out.write("    </script>\n");
      out.write("    <form method=\"post\" onsubmit=\"return validat()\">\n");
      out.write("    enter:<input type=\"text\" name=\"name\">\n");
      out.write("    <input type=\"submit\" value=\"validate\">\n");
      out.write("    </form>\n");
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
