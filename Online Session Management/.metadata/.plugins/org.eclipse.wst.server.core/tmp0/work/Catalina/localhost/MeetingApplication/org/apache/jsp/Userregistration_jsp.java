/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.80
 * Generated at: 2023-08-29 10:14:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Userregistration_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
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

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\r\n");
      out.write("\r\n");
      out.write("  <title>Add User</title>\r\n");
      out.write("  <meta content=\"\" name=\"description\">\r\n");
      out.write("  <meta content=\"\" name=\"keywords\">\r\n");
      out.write(" \r\n");
      out.write("<!-- CSS Files -->\r\n");
      out.write("<link href=\"assets/css/style.css\" rel=\"stylesheet\">\r\n");
      out.write("<link href=\"assets/vendor/animate.css/animate.min.css\" rel=\"stylesheet\">\r\n");
      out.write("<link href=\"assets/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("<link href=\"assets/vendor/boxicons/css/boxicons.min.css\" rel=\"stylesheet\">\r\n");
      out.write("<link href=\"assets/vendor/bootstrap-icons/bootstrap-icons.css\" rel=\"stylesheet\">\r\n");
      out.write(" \r\n");
      out.write(" \r\n");
      out.write("<style>\r\n");
      out.write("button {\r\n");
      out.write("    background-color: #4CAF50; /* Green Submit Button*/\r\n");
      out.write("    border: none;\r\n");
      out.write("    color: white;\r\n");
      out.write("    padding: 15px 30px;\r\n");
      out.write("    border-radius: 10px;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("    text-decoration: none;\r\n");
      out.write("    display: inline-block;\r\n");
      out.write("    font-size: 16px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>  \r\n");
      out.write("  <header id=\"header\" class=\"fixed-top header-inner-pages\">\r\n");
      out.write("    <div class=\"container d-flex align-items-center justify-content-between\">\r\n");
      out.write("      <h1 class=\"logo\"><a href=\"AdminHomePage.jsp\">Online Session Management </a></h1>\r\n");
      out.write("		 \r\n");
      out.write("		 <nav id=\"navbar\" class=\"navbar\">\r\n");
      out.write("        	<ul>\r\n");
      out.write("          	<li><a class=\"nav-link scrollto active\" href=\"AdminHomePage.jsp\">Home</a></li>\r\n");
      out.write("            <li class=\"dropdown\">\r\n");
      out.write("            <a style=\"color:white;\">User Details<i class=\"bi bi-chevron-down\"></i></a>\r\n");
      out.write("	             <ul>\r\n");
      out.write("	                <li class=\"dropdown\"><a class=\"nav-link scrollto\" href=\"Userregistration.jsp\" style=\"color:black;\">Add User</a></li>\r\n");
      out.write("	                <li class=\"dropdown\"><a class=\"nav-link scrollto\" href=\"ViewUsers.jsp\" style=\"color:black;\">View User Details</a></li>\r\n");
      out.write("	             </ul>\r\n");
      out.write("            </li> \r\n");
      out.write("            <li class=\"dropdown\">\r\n");
      out.write("        	  <a style=\"color:white;\">Session<i class=\"bi bi-chevron-down\"></i></a>\r\n");
      out.write("	              <ul>\r\n");
      out.write("	                <li class=\"dropdown\"><a class=\"nav-link scrollto\" href=\"CreateSession.jsp\" style=\"color:black;\">Create Session</a></li>\r\n");
      out.write("	                <li class=\"dropdown\"><a class=\"nav-link scrollto\" href=\"ViewSession.jsp\" style=\"color:black;\">View Session</a></li>\r\n");
      out.write("	              </ul>\r\n");
      out.write("            </li> \r\n");
      out.write("          <li class=\"dropdown\">\r\n");
      out.write("          <a style=\"color:white;\"><img src=\"assets/img/user.png\" alt=\"\"  class=\"rounded-circle\">Welcome Admin</a>\r\n");
      out.write("	            <ul><li class=\"dropdown\"><a class=\"nav-link scrollto\" href=\"Home.jsp\" style=\"color:black;\">Logout</a></li></ul>\r\n");
      out.write("         </li> </ul>\r\n");
      out.write("         <i class=\"bi bi-list mobile-nav-toggle\"></i>\r\n");
      out.write("      </nav>\r\n");
      out.write("    \r\n");
      out.write("    </div>\r\n");
      out.write("  </header>\r\n");
      out.write("  \r\n");
      out.write("<!--  ======= User Registration Section ======= -->\r\n");
      out.write("<section id=\"userreg\" class=\"userreg\">\r\n");
      out.write("    <div class=\"container\" >\r\n");
      out.write("        <div class=\"row justify-content-center\"> \r\n");
      out.write("          <div class=\"col-xl-6 col-lg-5 pt-5 pt-lg-0\" >\r\n");
      out.write("            <div class=\"text-center\">\r\n");
      out.write("              <div class=\"icon-box\" data-aos=\"fade-up\">\r\n");
      out.write("              <br>\r\n");
      out.write("                <h2 class=\"bx bx-user\"> User Registration</h2><br>\r\n");
      out.write("                <br>\r\n");
      out.write("                <form action=\"UserRegistrationServlet\" method=\"post\" >\r\n");
      out.write("                <input type=\"text\" name=\"fullname\" class=\"form-control\" id=\"fullname\"   placeholder=\"Enter Name\" required>\r\n");
      out.write("                <br>\r\n");
      out.write("                <div class=\"form-control\">\r\n");
      out.write("	                <label> Select Course :-\r\n");
      out.write("						<select id=\"studclass\" size=\"1\" name=\"studclass\" onchange=\"makeSubmenu(this.value)\">\r\n");
      out.write("							<option value=\"\" disabled selected>None</option>\r\n");
      out.write("							<option value=\"BEComputer\">BE Computer</option>\r\n");
      out.write("		                    <option value=\"BEMechanical\">BE Mechanical</option>\r\n");
      out.write("		                    <option value=\"BEElectrical\">BE Electrical</option>\r\n");
      out.write("		                    <option value=\"BECivil\">BE Civil</option>\r\n");
      out.write("		                    <option value=\"BEElectronic\">BE Electronic</option>\r\n");
      out.write("	                    </select>\r\n");
      out.write("	                </label>\r\n");
      out.write("                </div>\r\n");
      out.write("                <br>\r\n");
      out.write("          <input type=\"text\" name=\"phoneNo\" class=\"form-control\" id=\"phoneNo\"  required pattern=\"[7-9]{1}[0-9]{9}\" title=\"Mobile number must be starts with 7, 8 or 9 digit and total number of digits are 10\"  placeholder=\"Enter Phone Number\" required>\r\n");
      out.write("          <br>\r\n");
      out.write("          <input type=\"text\" name=\"email\" class=\"form-control\" id=\"email\"   placeholder=\"Enter E-mail Address\" required> <br>\r\n");
      out.write("          <input type=\"password\" name=\"password\" class=\"form-control\" id=\"password\"   placeholder=\"Enter Password\" required> <br>\r\n");
      out.write("          <input type=\"radio\"   name=\"gender\" value=\"male\" >Male \r\n");
      out.write("          <input type=\"radio\" name=\"gender\" value=\"female\">Female\r\n");
      out.write("          <input type=\"radio\"  name=\"gender\" value=\"other\">Other \r\n");
      out.write("             \r\n");
      out.write("		  <br><br>\r\n");
      out.write("	      <div class=\"text-center\">\r\n");
      out.write("             <button type=\"submit\"  class=\"button\" value=\"login\">Submit</button>\r\n");
      out.write("		  </div>\r\n");
      out.write("		  </form>\r\n");
      out.write("		  </div>\r\n");
      out.write("		  </div>\r\n");
      out.write("		  </div>\r\n");
      out.write("		  </div>\r\n");
      out.write("		  </div>\r\n");
      out.write("    </section>\r\n");
      out.write("</body>\r\n");
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
