/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.81
 * Generated at: 2018-07-29 02:21:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE HTML>\r\n");
      out.write("<html lang=\"zxx\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("\t<title>Home</title>\r\n");
      out.write("\t<!-- Meta tag Keywords -->\r\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("\t<meta charset=\"UTF-8\" />\r\n");
      out.write("\t<meta name=\"keywords\" content=\"\"/>\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\taddEventListener(\"load\", function () {\r\n");
      out.write("\t\t\tsetTimeout(hideURLbar, 0);\r\n");
      out.write("\t\t}, false);\r\n");
      out.write("\r\n");
      out.write("\t\tfunction hideURLbar() {\r\n");
      out.write("\t\t\twindow.scrollTo(0, 1);\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t</script>\r\n");
      out.write("\t<!-- Meta tag Keywords -->\r\n");
      out.write("\t<!-- css files -->\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("\t<!-- Style-CSS -->\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/fontawesome-all.css\">\r\n");
      out.write("\t<!-- Font-Awesome-Icons-CSS -->\r\n");
      out.write("\t<!-- //css files -->\r\n");
      out.write("\t<!-- web-fonts -->\r\n");
      out.write("\t<link href=\"http://maxcdn.bootstrapcdn.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i\" rel=\"stylesheet\">\r\n");
      out.write("\t<link href=\"http://maxcdn.bootstrapcdn.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i\" rel=\"stylesheet\">\r\n");
      out.write("\t<!-- //web-fonts -->\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\t<!-- bg effect -->\r\n");
      out.write("\t<div id=\"bg\">\r\n");
      out.write("\t\t<canvas></canvas>\r\n");
      out.write("\t\t<canvas></canvas>\r\n");
      out.write("\t\t<canvas></canvas>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- //bg effect -->\r\n");
      out.write("\t<!-- title -->\r\n");
      out.write("\t<h1>Effect Login Form</h1>\r\n");
      out.write("\t<!-- //title -->\r\n");
      out.write("\t<!-- content -->\r\n");
      out.write("\t<div class=\"sub-main-w3\">\r\n");
      out.write("\t\t<form action=\"/First/login\" method=\"post\" id=\"loginform\">\r\n");
      out.write("\t\t\t<h2>Login Now\r\n");
      out.write("\t\t\t\t<i class=\"fas fa-level-down-alt\"></i>\r\n");
      out.write("\t\t\t</h2>\r\n");
      out.write("\t\t\t<div class=\"form-style-agile\">\r\n");
      out.write("\t\t\t\t<label>\r\n");
      out.write("\t\t\t\t\t<i class=\"fas fa-user\"></i>\r\n");
      out.write("\t\t\t\t\tUsername\r\n");
      out.write("\t\t\t\t</label>\r\n");
      out.write("\t\t\t\t<input placeholder=\"Username\" id=\"username\" name=\"username\" type=\"text\" required=\"\">\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"form-style-agile\">\r\n");
      out.write("\t\t\t\t<label>\r\n");
      out.write("\t\t\t\t\t<i class=\"fas fa-unlock-alt\"></i>\r\n");
      out.write("\t\t\t\t\tPassword\r\n");
      out.write("\t\t\t\t</label>\r\n");
      out.write("\t\t\t\t<input placeholder=\"Password\" id=\"password\" name=\"password\" type=\"password\" required=\"\">\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<!-- checkbox -->\r\n");
      out.write("\t\t\t<div class=\"wthree-text\">\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<!-- <li>   记住密码\r\n");
      out.write("\t\t\t\t\t\t<label class=\"anim\">\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"checkbox\" class=\"checkbox\" required=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t<span>Stay Signed In</span>\r\n");
      out.write("\t\t\t\t\t\t</label>\r\n");
      out.write("\t\t\t\t\t</li> -->\r\n");
      out.write("\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t<input type=\"button\" value=\"New User\" onclick=\"location.href='register.jsp';\"/>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"#\">Forgot Password?</a>\r\n");
      out.write("\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<!-- //checkbox -->\r\n");
      out.write("\t\t\t<input type=\"submit\" value=\"Log In\">\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- //content -->\r\n");
      out.write("\r\n");
      out.write("\t<!-- copyright -->\r\n");
      out.write("\t<div class=\"footer\">\r\n");
      out.write("\t\t<p>Copyright &copy; 2018.Company name All rights reserved.<a target=\"_blank\" href=\"http://sc.chinaz.com/moban/\">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- //copyright -->\r\n");
      out.write("\r\n");
      out.write("\t<!-- Jquery -->\r\n");
      out.write("\t<script src=\"js/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("\t<!-- //Jquery -->\r\n");
      out.write("\r\n");
      out.write("\t<!-- effect js -->\r\n");
      out.write("\t<script src=\"js/canva_moving_effect.js\"></script>\r\n");
      out.write("\t<!-- //effect js -->\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}