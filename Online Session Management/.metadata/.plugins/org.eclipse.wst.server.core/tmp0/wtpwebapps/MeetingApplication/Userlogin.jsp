<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>User Login</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">


  <!-- CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  
  

  <style>
.button {
  background-color: #0000a0;
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
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center justify-content-between">
		<h1 class="logo"><a href="Userlogin.jsp">Online Session Management</a></h1>
            <nav id="navbar" class="navbar">
      		  <ul>
          		<li><a class="nav-link scrollto active" href="Home.jsp">Home</a></li>
	          </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>
    </div>
</header>

<main id="main">
    <section id="about" class="about">
	    <div class="container">
		   <div class="row">
           <div class="col-xl-2 col-lg-7" data-aos="fade-right"><br><br></div>
	         <div class="col-xl-4 col-lg-7" data-aos="fade-right"><br><br>
       		  	<img src="assets/img/log.jpg" class="img-fluid" alt="" style="margin-right: 70px">
             </div>
	          <div class="col-xl-6 col-lg-5 pt-5 pt-lg-0">
	           	 <div class="text-center">
	            	<div class="icon-box" data-aos="fade-up"><br>
				      <h1 class="bx bx-user"> Student Login</h1><br>
				            	<br>
			          <form name="loginForm" action="UserLoginServlet" method="post">
							<input type="text" name="email" class="form-control" id="email"   placeholder="Enter E-Mail ID" required>
				            <br>
				            <input type="password" name="password" class="form-control" id="password"   placeholder="Enter Password"  required data-validation-required-message="Please enter your password!">
				            <br><div class="text-center">
				             <button class="button" name="login"  type="submit" value="login">Login</button>
				             <button class="button" name="reset"  type="reset" >Reset</button>
				             <p><i>(Contact Admin If You Are Unable To Login)</i></p>
				            </div>
					 </form>
	  </div>
   </div></div></div></div>
  </section>
</main>
</body>
</html>