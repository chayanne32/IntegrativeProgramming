package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Main_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>MARKS Main Page</title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        #t{\n");
      out.write("            font-family:Century Gothic;\n");
      out.write("        }\n");
      out.write("        .btn{\n");
      out.write("            font-family:Century Gothic;\n");
      out.write("            float: center;\n");
      out.write("            border-radius: 12px;\n");
      out.write("            padding: 10px;\n");
      out.write("            margin: 25px;\n");
      out.write("            font-size: 16px;\n");
      out.write("            width: 200px\n");
      out.write("        }\n");
      out.write("        .btn1{\n");
      out.write("            font-family:Century Gothic;\n");
      out.write("            float: right;\n");
      out.write("            border-radius: 12px;\n");
      out.write("            padding: 8px;\n");
      out.write("        }\n");
      out.write("        #f1{\n");
      out.write("            width: 80%;\n");
      out.write("            border-radius: 20px;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("    </style>\n");
      out.write("    \n");
      out.write("    ");

        Object name = session.getAttribute("sessionName");
        Object id = session.getAttribute("sessionID");
    
      out.write("\n");
      out.write("    \n");
      out.write("    <body id=\"t\">\n");
      out.write("        <center>\n");
      out.write("            <form>\n");
      out.write("                <fieldset id=\"f1\">\n");
      out.write("                    <legend><h1>MARKS Grading System</h1></legend>\n");
      out.write("                    <a href=\"Logout.jsp\"><input type=\"button\" class=\"btn1\" value=\"Logout\"></a>\n");
      out.write("                    <h2>Welcome Mr./Ms. ");
out.print(name);
      out.write(", What would you like to do?</h2>\n");
      out.write("                    <table>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><a href=\"AddClass.jsp\"><input class=\"btn\" type=\"button\" value=\"Add Class\"></td>\n");
      out.write("                            <td><a href=\"GradingSystem.jsp\"><input class=\"btn\" type=\"button\" value=\"Assign Grading System\"></a></td>\n");
      out.write("                            <td><a href=\"AddStudent.jsp\"><input class=\"btn\" type=\"button\" value=\"Add Student\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><a href=\"ViewClassRecord.jsp\"><input class=\"btn\" type=\"submit\" value=\"View Class Records\"></a></td>\n");
      out.write("                            <td><a href=\"InputScoresStudent.jsp\"><input class=\"btn\" type=\"button\" value=\"Input Scores\"></a></td>\n");
      out.write("                            <td><a href=\"EnrollStud.jsp\"><input class=\"btn\" type=\"button\" value=\"Add Student to Class\"></a></td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                </fieldset>\n");
      out.write("            </form>\n");
      out.write("        </center>\n");
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
