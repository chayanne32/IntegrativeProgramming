package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>MARKS Login</title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        #t{\n");
      out.write("            font-family:Century Gothic;\n");
      out.write("        }\n");
      out.write("        .btn{\n");
      out.write("            font-family:Century Gothic;\n");
      out.write("            float: right;\n");
      out.write("            border-radius: 12px;\n");
      out.write("            padding: 8px;\n");
      out.write("        }\n");
      out.write("        #f1{\n");
      out.write("            width: 80%;\n");
      out.write("            border-radius: 20px;\n");
      out.write("        }\n");
      out.write("        #f2{\n");
      out.write("            width: 40%;\n");
      out.write("            border-radius: 20px;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("    </style>\n");
      out.write("        \n");
      out.write("    <body id=\"t\">\n");
      out.write("        <center>\n");
      out.write("            <fieldset id=\"f1\">\n");
      out.write("                <legend><h1>MARKS Grading System</h1></legend>\n");
      out.write("                \n");
      out.write("                <fieldset id=\"f2\">\n");
      out.write("                    <form action=\"Authentication.jsp\" method=\"POST\">\n");
      out.write("                        <h2>Login</h2>\n");
      out.write("                        <table>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>ID Number:</td>\n");
      out.write("                                <td><input type=\"text\" name=\"user\" class=\"btn\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Password:</td>\n");
      out.write("                                <td><input type=\"password\" name=\"pass\" class=\"btn\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td></td>\n");
      out.write("                                <td><input class=\"btn\" type=\"submit\" value=\"Login\" ></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                    </form>\n");
      out.write("                </fieldset>\n");
      out.write("                <br><br>\n");
      out.write("                <fieldset id=\"f2\">\n");
      out.write("                    <h2>Register</h2>\n");
      out.write("                    <form action=\"Register.jsp\" method=\"POST\">\n");
      out.write("                    <table>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>ID Number:</td>\n");
      out.write("                            <td><input type=\"text\" name=\"ruser\" class=\"btn\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Password:</td>\n");
      out.write("                            <td><input type=\"password\" name=\"rpass\" class=\"btn\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>First Name:</td>\n");
      out.write("                            <td><input type=\"text\" name=\"rfname\" class=\"btn\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Middle Name:</td>\n");
      out.write("                            <td><input type=\"text\" name=\"rmname\" class=\"btn\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Last Name:</td>\n");
      out.write("                            <td><input type=\"text\" name=\"rlname\" class=\"btn\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Degree:</td>\n");
      out.write("                            <td><input type=\"text\" name=\"rdeg\" class=\"btn\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td></td>\n");
      out.write("                            <td><input class=\"btn\" type=\"submit\" value=\"Register\" ></td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                </fieldset>\n");
      out.write("            </fieldset>\n");
      out.write("\n");
      out.write("        </center>\n");
      out.write("        \n");
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
