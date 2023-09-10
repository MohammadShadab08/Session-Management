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

  <title>Scheduled Classes</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  
  <!-- CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
   
</head>
<body>
	<header id="header" class="fixed-top header-inner-pages">
      <div class="container d-flex align-items-center justify-content-between">
	    <h1 class="logo"><a href="UserHome.jsp">Online Session Management</a></h1>
          <nav id="navbar" class="navbar">
          <ul>
          <li><a class="nav-link scrollto" href="UserHome.jsp">Home</a></li>
          <li><a class="nav-link scrollto active" href="ViewMeetingLinkStudent.jsp">Scheduled Classes</a></li>
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
      </nav>
     </div>
  </header>
 <main id="main">
 <br><br>
    <section id="services" class="services">
      <div class="container">
        <div class="section-title">
          <h2>Scheduled Classes </h2>
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
                     //while(rs.next())
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
		                  <th> Subject Name</th>
		                     <th>Date</th>
		                     <th>Time</th>
		                     <th>Link</th>
		                  </tr>
		                  <%}%>
                    	 <TR>
                    	 <td style="color:black"><%=rs.getString(2) %></td>
                    	  <td style="color:black"><%=rs.getString(3) %></td> 
                    	 <td style="color:black"><%=rs.getString(4) %></td>
                    	 <td style="color:black"><a href="<%=rs.getString(5) %>" style="color:blue;">Join Now</a></td>
                    	 </TR>                    	 
                    <%count++; }while(rs.next());}%>
                    </table>     
                </form>
			</div></div></div>
         </div>
    </section>   
</body>
</html>