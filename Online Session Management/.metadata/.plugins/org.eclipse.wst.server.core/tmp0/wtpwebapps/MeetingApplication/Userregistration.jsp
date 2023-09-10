<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Add User</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
 
<!-- CSS Files -->
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
 
 
<style>
button {
    background-color: #4CAF50; /* Green Submit Button*/
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
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center justify-content-between">
      <h1 class="logo"><a href="AdminHomePage.jsp">Online Session Management </a></h1>
		 
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
  
<!--  ======= User Registration Section ======= -->
<section id="userreg" class="userreg">
    <div class="container" >
        <div class="row justify-content-center"> 
          <div class="col-xl-6 col-lg-5 pt-5 pt-lg-0" >
            <div class="text-center">
              <div class="icon-box" data-aos="fade-up">
              <br>
                <h2 class="bx bx-user"> User Registration</h2><br>
                <br>
                <form action="UserRegistrationServlet" method="post" >
                <input type="text" name="fullname" class="form-control" id="fullname"   placeholder="Enter Name" required>
                <br>
                <div class="form-control">
	                <label> Select Course :-
						<select id="studclass" size="1" name="studclass" onchange="makeSubmenu(this.value)">
							<option value="" disabled selected>None</option>
							<option value="BEComputer">BE Computer</option>
		                    <option value="BEMechanical">BE Mechanical</option>
		                    <option value="BEElectrical">BE Electrical</option>
		                    <option value="BECivil">BE Civil</option>
		                    <option value="BEElectronic">BE Electronic</option>
	                    </select>
	                </label>
                </div>
                <br>
          <input type="text" name="phoneNo" class="form-control" id="phoneNo"  required pattern="[7-9]{1}[0-9]{9}" title="Mobile number must be starts with 7, 8 or 9 digit and total number of digits are 10"  placeholder="Enter Phone Number" required>
          <br>
          <input type="text" name="email" class="form-control" id="email"   placeholder="Enter E-mail Address" required> <br>
          <input type="password" name="password" class="form-control" id="password"   placeholder="Enter Password" required> <br>
          <input type="radio"   name="gender" value="male" >Male 
          <input type="radio" name="gender" value="female">Female
          <input type="radio"  name="gender" value="other">Other 
             
		  <br><br>
	      <div class="text-center">
             <button type="submit"  class="button" value="login">Submit</button>
		  </div>
		  </form>
		  </div>
		  </div>
		  </div>
		  </div>
		  </div>
    </section>
</body>
</html>