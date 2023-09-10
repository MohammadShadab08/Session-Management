<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Admin Login</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

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
      <h1 class="logo"><a href="Adminlogin.jsp">Online Session Management</a></h1>
        <nav id="navbar" class="navbar">
   	      <ul>
     	     <li><a class="nav-link scrollto active" href="Home.jsp">Home</a></li>
          </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>
    </div>
  </header>  
  <main id="main">
    <section id="admin" class="contact section-bg">
     <br>
      <div class="row">
         <div class="col-lg-2">
           </div>
           <div class="col-lg-5">
           <center> <h1 class="bx bx-user" style="color:#fff;">Admin Login</h1><br><br><br></center>
      	   <form action="AdminLoginServlet" method="post">
	        <input type="text" name="email" class="form-control" id="uname" placeholder="Enter E-mail ID" required>
	        <br>
	        <input type="password" name="password" class="form-control" id="pass"   placeholder="Enter Password" required>
	        <br>
		    <div class="text-center">
		       <button class="button"  name="login"  type="submit" value="login">Login</button>
		       <button class="button" name="reset"  type="reset" >Reset</button>
	        </div>
	      </form>
	     </div></div>
    </section>
  </main>   
</body>
</html>