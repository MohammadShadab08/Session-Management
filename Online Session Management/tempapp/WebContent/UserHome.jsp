<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>MeetingScheduled</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Hidayah - v4.7.0
  * Template URL: https://bootstrapmade.com/hidayah-free-simple-html-template-for-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  
  <style>
.button {
  background-color: #0000a0; /* Green */
  border: none;
  color: white;
  padding: 6px 58px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}


 </style> 
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="index.jsp">OnlineSessionManagement</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="UserHome.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="ViewMeetingLinkStudent.jsp">Notification</a></li>
          <li class="dropdown"><a href="#"><span>Welcome<%response.setContentType("text/html");  
				 HttpSession sessio=request.getSession(true);  
	               if(session!=null){  
	               String fullname=(String)session.getAttribute("fullname");  
	                out.print(" "+fullname+""); }   %></span> <i class="bi bi-chevron-down"></i></a>
            <ul>
                                       
              <li><a href="LogoutCon">Logout</a></li>            
            </ul>
          </li>
       </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  

   <main id="main">

   <!--  ======= About Section ======= -->
    <section id="about" class="about">
    
    <div class="container">

     <div class="section-title">
          <h2 style="font-size:22px;"><span></span> Profile</h2>
          
        </div>
  <%
                     Connection con=DBConnection.getConnection();
                     Statement st=con.createStatement();
                     ResultSet rs=st.executeQuery("select * from user");
                     //while(rs.next())
                     if(rs.next() == false) {
                    	%>
									<h4 style="text-align: right; margin-right: 70px">
										<b>No Users Present</b>
									</h4>
									<%
                     }
                    else{
                    	int count=0;
                    	do{	 
                    	 if(count == 0) {	
                    	 %>
			
    
         <center><div class="row gutters-sm">
            
            <div class="padding">
           <!--  <div class="container center_div"> -->
            <div class="col-md-8" align="center">
              <div class="card mb-3">
                <div class="card-body">
                  
                  <div class="row">
                    <div class="col-sm-3">
                      <label class="mb-0">Name</label>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     <%response.setContentType("text/html");  
                      if(session!=null){  
	                String fullname=(String)session.getAttribute("fullname"); 	          
	                out.print(" "+fullname+""); }   %>
                    </div>
                  </div>
                  <hr>
                  
                  <div class="row">
                    <div class="col-sm-3">
                      <label class="mb-0">Student Class</label>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     <%response.setContentType("text/html");  
                      if(session!=null){  
	                String studclass=(String)session.getAttribute("studclass"); 	          
	                out.print(" "+studclass+""); }   %>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <label class="mb-0">Mobile No</label>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     <%response.setContentType("text/html");  
                      if(session!=null){  
	                String phoneNo=(String)session.getAttribute("phoneNo"); 	          
	                out.print(" "+phoneNo+""); }   %>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <label class="mb-0">Gender</label>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     <%response.setContentType("text/html");  
                      if(session!=null){  
	                String gender=(String)session.getAttribute("gender"); 	          
	                out.print(" "+gender+""); }   %>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <label class="mb-0">Email</label>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     <%response.setContentType("text/html");  
                      if(session!=null){  
	                String email=(String)session.getAttribute("email"); 	          
	                out.print(" "+email+""); }   %>
                    </div>
                  </div>
                  
                 
                </div>
              </div><%}%><%count++; }while(rs.next());}%>

      </div>
    </section><!-- End About Section -->

    

  </main><!-- End #main -->
 
  
  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
<script>

</script>
</body>
</html>