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

  <title>Update Student Details</title>
  <meta content="" name="description">
  <meta content="" name="keywords">


  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  <link href="assets/css/style.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
</head>
<body>
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="AdminHomePage.jsp">Online Session Management</a></h1>
      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto " href="AdminHomePage.jsp">Home</a></li>
          <li><a class="nav-link scrollto active" href="ViewUsers.jsp">User Details</a></li>
           <li class="dropdown">
          <a style="color:white;">Session<i class="bi bi-chevron-down"></i></a>
	                <ul>
	                <li class="dropdown"><a class="nav-link scrollto" href="CreateSession.jsp" style="color:black;">Create Session</a></li>
	                <li class="dropdown"><a class="nav-link scrollto" href="ViewSession.jsp" style="color:black;">View Session</a></li>
	                </ul>
         </li> 
          <li class="dropdown">
          <a style="color:white;"><img src="assets/img/user.png" alt=""  class="rounded-circle">Welcome Admin</a>
	                <ul><li class="dropdown"><a class="nav-link scrollto" href="Home.jsp" style="color:black;">Logout</a></li></ul>
         </li> </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>
    </div>
  </header>
 <br><br>
   
	<% 
    if(request.getParameter("submit")!=null)
    {
        String id = request.getParameter("id");
        String fullname = request.getParameter("fullname");
        String studclass = request.getParameter("studclass");
        String phoneNo = request.getParameter("phoneNo");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/meet","root","root");
        pst = con.prepareStatement("update user set fullname = ?,studclass =?,phoneNo= ?,email= ?,gender= ? where id = ?");
        
        pst.setString(1, fullname);
        pst.setString(2, studclass);
        pst.setString(3, phoneNo);
        pst.setString(4, email);
        pst.setString(5, gender);
         pst.setString(6, id);
        pst.executeUpdate();  
        
        %>
        
       <script>   
            alert("Student details updated successfully"); 
          
       </script>
    <%             
    }

%>

<section id="pricing" class="pricing section-bg">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2 style="font-size:22px;"><span>Update</span> Student</h2>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-6">
          </div>
          <div class="col-lg-4 col-md-6 mt-4 mt-md-0">
            <div class="box recommended" data-aos="zoom-in">
               <form  method="POST" action="#" >
                    <%    
                         Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
        
                         Class.forName("com.mysql.jdbc.Driver");
                          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/meet","root","root");
                           
                          String id = request.getParameter("id");
                          
                        pst = con.prepareStatement("select * from user where id = ?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        
                   while(rs.next())
                    {
                    
                    %>
                   <div alight="left">
                        <label class="form-label">Student Name :- </label>
                        <input type="text" class="form-control" placeholder="Student Name" value="<%= rs.getString("fullname")%>" name="fullname" id="fullname" required >
                    
                     </div>
                     
                      <div alight="left">
                        <label class="form-label">Student Course :- </label>
                        <input type="text" class="form-control" placeholder="Student Address" value="<%= rs.getString("studclass")%>" name="studclass" id="studclass" required >
                     </div>
                     
                     <div alight="left">
                        <label class="form-label">Student Mobile Number :- </label>
                        <input type="text" class="form-control" placeholder="Student Name" value="<%= rs.getString("phoneNo")%>" name="phoneNo" id="phoneNo" required >
                     </div>
                     
                     <div alight="left">
                        <label class="form-label">Student E-mail :- </label>
                        <input type="text" class="form-control" placeholder="Student Mobile No" value="<%= rs.getString("email")%>" name="email" id="email" required >
                     </div>
                     
                     <div alight="left">
                        <label class="form-label">Gender :- </label>
                        <input type="text" class="form-control" placeholder="Student Date of Birth" value="<%= rs.getString("gender")%>" name="gender" id="gender" required >
                     </div>
                    <% }  
                    %>
                 <br>  
              <div class="btn-wrap">
                <center><input type="submit" id="submit" value="Update" name="submit" class="btn-buy"></center>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mt-4 mt-lg-0">
          </div>
        </div>
      </div>
    </section>
</body>
</html>