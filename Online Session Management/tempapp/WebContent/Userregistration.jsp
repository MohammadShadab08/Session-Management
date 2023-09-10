<!DOCTYPE html>
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
/* .button {
  background-color: #000080;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 3px 2px;
  cursor: pointer;
}
 */
button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 30px;
    border-radius: 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}


</style>
<!-- ======= Header ======= --></head>

<body>

  
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="index.jsp">OnlineSessionManagement</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="AdminHomePage.jsp">Home</a></li>
          <!-- <li><a class="nav-link scrollto" href="ViewUsers.jsp">User Details</a></li> -->
          <li class="dropdown">
          <a style="color:white;">User Details<i class="bi bi-chevron-down"></i></a>
	                <ul>
	                <li class="dropdown"><a class="nav-link scrollto" href="Userregistration.jsp" style="color:black;">Add UserRegister</a></li>
	                <li class="dropdown"><a class="nav-link scrollto" href="ViewSession.jsp" style="color:black;">View UserDetails</a></li>
	                </ul>
         </li> 
           <li class="dropdown">
          <a style="color:white;">Session<i class="bi bi-chevron-down"></i></a>
	                <ul>
	                <li class="dropdown"><a class="nav-link scrollto" href="CreateSession.jsp" style="color:black;">Create Session</a></li>
	                <li class="dropdown"><a class="nav-link scrollto" href="ViewSession.jsp" style="color:black;">View Session</a></li>
	                </ul>
         </li> 
          <!-- <li><a class="nav-link scrollto " href="notification.jsp"class="img-fluid" style="color:white;"><img src="assets/img/bg.png" alt="" >Send Notification</a></li>        
           -->
          <li class="dropdown">
          <a style="color:white;"><img src="assets/img/user.png" alt=""  class="rounded-circle">Welcome Admin</a>
	                <ul><li class="dropdown"><a class="nav-link scrollto" href="Home.jsp" style="color:black;">Logout</a></li></ul>
         </li> </ul>
          <!--  <li><a class="nav-link scrollto" href="Goverment department.jsp ">Goverment Department</a></li> -->
        <!--   <li><a class="nav-link scrollto" href="index.jsp">Logout</a></li> -->
         
       
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  

 

   <!--  ======= Services Section ======= -->
    <section id="userreg" class="userreg">
    
    
    <!-- <div class="carousel-item active" style="background-image: url(assets/img/reg3.jpg)">  -->
<div class="container" >
        <div class="row justify-content-center"> 
        
      
          
          
          <div class="col-xl-6 col-lg-5 pt-5 pt-lg-0" >
           
            <div class="text-center">
            <div class="icon-box" data-aos="fade-up">
            <h2 class="bx bx-user"> Student Registration</h2><br>
            <br>
             <form action="UserRegistrationServlet" method="post" >
           
          <input type="text" name="fullname" class="form-control" id="fullname"   placeholder="Enter student Name" required>
          
          <br>
           <!-- <input type="text" name="studclass" class="form-control" id="studclass"   placeholder="Enter class" required><br> -->
      <div class="form-control">  <label> Select class :-
<select id="studclass" size="1" name="studclass" onchange="makeSubmenu(this.value)">
<option value="" disabled selected>None</option>

                        
                        <option value="BEComputer">BE Computer</option>
                        <option value="BEMechanical">BE Mechanical</option>
                        <option value="BEElectrical">BE Electrical</option>
                        <option value="BECivil">BE Civil</option>
                        <option value="BEElectronic">BE Electronic</option>
                      </select></label>
</div><br>
          <input type="text" name="phoneNo" class="form-control" id="phoneNo"  required pattern="[7-9]{1}[0-9]{9}" title="Mobile number must be starts with 7, 8 or 9 digit and total number of digits are 10"  placeholder="Enter Your PhoneNo" required>
          <br>
          <input type="text" name="email" class="form-control" id="email"   placeholder="abc@gmail.com" required> <br>
           <input type="password" name="password" class="form-control" id="password"   placeholder="Enter Password" required> <br>
         
          <!-- <textarea name="address" rows="3" class="form-control" id="Address"   placeholder="Enter Your Address( mention your full address (state/district/pincode)" required></textarea> -->
            
             <!-- <input type="Date" name="dob" class="form-control" id="DOB" pattern="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d" title="Date should be month-day-year format (ex. 03/22/1990)" required="required"  placeholder="DOB" required></label>
            <br> -->
            
            <input type="radio"   name="gender" value="male" >Male 
            <input type="radio" name="gender" value="female">Female
            <input type="radio"  name="gender" value="other">Other 
             
<br>

 <br> <div class="text-center">
             <button type="submit"  class="button" value="login">Submit</button>
             <!--  <button name="login"  type="submit" value="login">Submit</button> -->
                   <!-- <button name="reset"  type="reset" >Cancel</button><br><br> -->
                   
			</div>
			</form>
			</div>
			</div>
			</div>
			</div>
			</div>
			</div>
    
    </section><!-- End Services Section

   

 <!--  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a> -->

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

</body>
</html>