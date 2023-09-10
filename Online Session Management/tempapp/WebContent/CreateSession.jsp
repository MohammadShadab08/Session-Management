<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>MeetingApp</title>
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
    background-color:purple; /* Green */
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
          <li><a class="nav-link scrollto active" href="AdminHomePage.jsp">Home</a></li>
          <!-- <li><a class="nav-link scrollto" href="ViewUsers.jsp">User Details</a></li> -->
          <li class="dropdown">
          <a style="color:white;">User Details<i class="bi bi-chevron-down"></i></a>
	                <ul>
	                <li class="dropdown"><a class="nav-link scrollto" href="Userregistration.jsp" style="color:black;">Add UserRegister</a></li>
	                <li class="dropdown"><a class="nav-link scrollto" href="ViewUsers.jsp" style="color:black;">View UserDetails</a></li>
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
<br><br>
         <!-- ======= Services Section ======= -->
    <section id="services" class="services">
      <div class="container" style="background-image: url(assets/img/session.jpg)">

        <div class="section-title">
          <h2>Create Session</h2>
           </div>

        <div class="row">
          <div class="col-lg-6 col-md-6 icon-box" data-aos="fade-up">
          <!--   <div class="row">
       <div class="col-lg-6"> -->
         <form action="CreateSessionCon" method="post" class="formone">
          <div class="row">
           
            <div class="form-group mt-1">
            <label><b>Meeting ID</b></label>
              <input type="text" name="subjectname" class="form-control" id="subjectname" placeholder="Enter Meeting Subject Name" required>
            </div>
            
            <div class="form-group mt-1">
            <label><b>Subject Name</b></label>
              <input type="text" name="subjectname" class="form-control" id="subjectname" placeholder="Enter Meeting Subject Name" required>
            </div>
             <div class="form-group mt-1">
             <label><b>Meeting Date</b></label>
              <input type="date" name="date" class="form-control" id="date" placeholder="Enter Date" required>
            </div>
            <div class="form-group mt-1">
            <label><b>Meeting Time</b></label>
              <input type="time" name="time" class="form-control" id="time" placeholder="Enter Time" required>
            </div>
            <div class="form-group mt-1">
            <label><b>Meeting Link</b></label>
              <input type="text" name="link" class="form-control" id="link" placeholder="Enter Link" required>
            </div>
            <div class="form-group mt-1">
            <label><b>Meeting Record</b></label>
              <input type="text" name="link" class="form-control" id="link" placeholder="Enter Link" required>
            </div>
             <div class="form-group mt-1">  <label> Select class :-
<select id="studclass" size="1" name="studclass" onchange="makeSubmenu(this.value)">
<option value="" disabled selected>None</option>

                        
                        <option value="BEComputer">BE Computer</option>
                        <option value="BEMechanical">BE Mechanical</option>
                        <option value="BEElectrical">BE Electrical</option>
                        <option value="BECivil">BE Civil</option>
                        <option value="BEElectronic">BE Electronic</option>
                      </select></label>
</div><br>
          
           
          </div>
          <br>
       <div class="text-center"><button class="btn-get-started" type="submit">Add</button><br>
     
       </div>
        </form>
</div>
<!--  <div class="col-lg-6">
 <img src="assets/img/notes1.png" class="img-fluid" alt="" width=300px;>
 </div> -->
</div>
             </div>
         </div>
      </div>
    </section><!-- End Services Section -->
  

   

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

</body>
</html>