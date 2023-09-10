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
          <li><a class="nav-link scrollto active" href="Home.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="Userregistration.jsp">Register</a></li>
       </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  

   <main id="main">

   <!--  ======= About Section ======= -->
    <section id="about" class="about">
    
    <div class="container">

        <div class="row">
        
        <div class="col-xl-2 col-lg-7" data-aos="fade-right"><br><br>
          
            
          </div>
          
          
          <div class="col-xl-4 col-lg-7" data-aos="fade-right"><br><br>
          
            <img src="assets/img/log.jpg" class="img-fluid" alt="" style="margin-right: 70px">
          </div>
          
          
          <div class="col-xl-6 col-lg-5 pt-5 pt-lg-0">
           
            <div class="text-center">
            <div class="icon-box" data-aos="fade-up">
            <h1 class="bx bx-user"> Student Login</h1><br>
            <br>
              
          
          
          
          <form name="loginForm" action="UserLoginServlet" method="post">
           
          
            <input type="text" name="email" class="form-control" id="email"   placeholder="abc@gmail.com" required>
            <br>
           <input type="password" name="password" class="form-control" id="password"   placeholder="enter password"  required data-validation-required-message="Please enter your password!">
            <br><div class="text-center">
             <button class="button" button name="login"  type="submit" value="login">login</button>
               <!-- <button class="button" button name="login"  type="submit" value="login">login</button> -->
                    <button class="button" button name="reset"  type="reset" >Cancel</button>
               <!-- <button name="login"  type="submit" value="login">login</button>
                   <button name="reset"  type="reset" >Cancel</button><br><br> -->
                   <p><i>(If you are new user,first do your registration on register site.)</i></p>
                   
                   
			</div>
			</form>
     
</div>
</div>
        
          </div>
        </div>

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