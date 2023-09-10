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

  <title>Scheduled Sessions</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  

  <!-- CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
   <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

</head>
<body>
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center justify-content-between">
    <h1 class="logo"><a href="AdminHomePage.jsp">Online Session Management</a></h1>
	<nav id="navbar" class="navbar">
    	<ul>
          <li><a class="nav-link scrollto active" href="AdminHomePage.jsp">Home</a></li>
          <li class="dropdown">
          <a style="color:white;">User Details<i class="bi bi-chevron-down"></i></a>
	      	<ul>
	     	   <li class="dropdown"><a class="nav-link scrollto" href="Userregistration.jsp" style="color:black;">Add User</a></li>
	           <li class="dropdown"><a class="nav-link scrollto" href="ViewUsers.jsp" style="color:black;">View User Details</a></li>
	        </ul>
         </li> 
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
  
   <main id="main">
	  <br><br>
   		<section id="services" class="services">
      	<div class="container">
      	<div class="section-title">
          <h2>View Meeting Schedule </h2>
        </div>
        <div class="row">
        <div class="col-md-12">
        <div class="col-sm-offset-2 col-lg-12 ">
		   <form class="subscription-form">
              <div style="margin-left:20px;margin-right:20px">
                 <table class="table table-bordered" style="color:black">
                    <%
                     Connection con=DBConnection.getConnection();
                     Statement st=con.createStatement();
                     ResultSet rs=st.executeQuery("select * from link");
                     if(rs.next() == false) {
                    	%>
                    	<h4 style="text-align:right;margin-right:70px"><b>No Student Present</b></h4>
                    	<%
                     }
                    else{
                    	int count=0;
                    	do{	 
                    	 if(count == 0) {	
                    	 %>
                    	 <tr  class="danger" style="color:black">
	                    	  <th> Course Name</th>
			                  <th> Class Name</th>
			                  <th>Date</th>
			                  <th>Time</th>
			                  <th>Meeting Link</th>
			                  <th>Delete Link</th> 
		                 </tr>
		                  <%}%>
                    	 <TR>
	                    	 <td style="color:black"><%=rs.getString(6) %></td>
	                    	 <td style="color:black"><%=rs.getString(2) %></td>
	                    	 <td style="color:black"><%=rs.getString(3) %></td> 
	                    	 <td style="color:black"><%=rs.getString(4) %></td>
	                    	 <td style="color:black"><a href="<%=rs.getString(5) %>" style="color:blue;"><%=rs.getString(5) %></a></td>
	                    	 <td><a style="color:red;" href="DeleteMeetingLinkCon?id=<%=rs.getInt(1)%>"><b>Delete</b></a></td>
                    	 </TR>                    	 
                       <% count++; }
                    	while(rs.next());} %> 
                        </table>     
			          </div>
                    </form>
				  </div>
			    </div>
		      </div>
		  </div>
    </section> 
</body>
</html>