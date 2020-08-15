<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Lumia Bootstrap Template - Index</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">



  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <div class="logo mr-auto">
        <h1><a href="index.jsp"><img src="assets/img/xyz.png" alt="" class="img-fluid"></a></h1>

      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li ><a href="index.jsp">Home</a></li>
          <li ><a href="#about">About</a></li>

          <li class="drop-down"><a href="">Services</a>
            <ul>
              <li class="drop-down"><a href="#">Accounts</a>
                <ul>
                  <li><a href="#">Saving Accounts</a></li>
                  <li><a href="#">Current Account </a></li>
                  <li><a href="#">Corporate Salary Accounts</a></li>
                  <li><a href="#">Retail Institutional Accounts</a></li>
                  <li><a href="#">Safe Deposite Locker</a></li>
                </ul>
              </li>

              <li class="drop-down"><a href="#">Deposits</a>
                <ul>
                  <li><a href="#">Fixed Deposit</a></li>
                  <li><a href="#">Recurring Deposit</a></li>
                  <li><a href="#">Tax Saving Fixed Deposit</a></li>
                </ul>
              </li>
              <li class="drop-down"><a href="#">Cards</a>
                <ul>
                  <li><a href="#">Credit Cards</a></li>
                  <li><a href="#">Debit Cards</a></li>
                  <li><a href="#">FASTag/FOREX/Prepaid Cards</a></li>
                  <li><a href="#">Credit Cards Services</a></li>
                  <li><a href="#">Debit Card Services</a></li>
                </ul>
              </li>
              <li class="drop-down"><a href="#">Loans</a>
                <ul>
                  <li><a href="#">Home Loan</a></li>
                  <li><a href="#">Car Loan</a></li>
                  <li><a href="#">Personal Loan</a></li>
                  <li><a href="#">Gold Loan</a></li>
                  <li><a href="#">Loan Against Securities</a></li>
                  <li><a href="#">Consumer Finance</a></li>
                </ul>
              </li>
              <li class="drop-down"><a href="#">Insurance</a>
                <ul>
                  <li><a href="#">Life Insurance</a></li>
                  <li><a href="#">Pradhan Mantri Jeevan Jyoti Bima Yojana</a></li>
                  <li><a href="#">Atal Pension Yojana</a></li>
                </ul>
              </li>
              <li class="drop-down"><a href="#">Investments</a>
                <ul>
                  <li><a href="#">Mutal Funds</a></li>
                  <li><a href="#">Protofolio Management Service</a></li>
                  <li><a href="#">National Pension Scheme</a></li>
                  <li><a href="#">Tax Saving Options</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li><a href="login.jsp">Login</a></li>

        </ul>
      </nav><!-- .nav-menu -->

      
    </div>
  </header><!-- End Header -->
 

  <!-- ======= Hero Section ======= -->


    <!-- ======= About Section ======= -->
   <section  class="contact section-bg" >
      <div class="container col-md-10">
        <div class="row mt-5 justify-content-center ">
          <div class="col-lg-8">
             <div class="section-title">
          <h2>Register</h2>
          </div>
            <form name="form" action="register" method="POST" class="form" >
            <p style="color:red;text-align:center;"> <%=(request.getAttribute("errMessage") == null) ? ""
         : request.getAttribute("errMessage")%></p>
    <div class="form-row ">
    <div class="form-group col-md-6">
      <label for="firstname">First Name</label>
      <input type="text" class="form-control" id="first_name"  name="first_name"  placeholder="first name" required>
    </div>
     <div class="form-group col-md-6">
      <label for="lastname">Last Name</label>
      <input type="text" class="form-control" id="last_name"  name="last_name" placeholder="last name"  required>
    </div>
  </div>
      <div class="form-group">
    <label for="acc_no">Account Number</label>
    <input type="text" class="form-control" id="acc_no" name="acc_no" placeholder="account number" size="10"  minlength="10" maxlength="10"  required>
  </div>
  <div class="form-group">
    <label for="aadhar_no">Aadhar Number</label>
    <input type="text" class="form-control" id="aadhar_no" name="aadhar_no" placeholder="aadhar number" size="12" minlength="12" maxlength="12"  required>
  </div>

   <div class="form-row">
   <div class="form-group col-md-4">
    <label for="gender">Gender</label>
    <select class="form-control" id="gender"  name="gender"  required>
      <option>Select</option>
      <option value="male">Male</option>
      <option value="female">Female</option>
      <option value="others">Others</option>

    </select>
  </div>
   <div class="form-group col-md-4">
    <label for="ovcupation">Occupation</label>
    <select class="form-control" id="occupation" name="occupation"  required>
      <option >Select</option>
      <option value="business">Business</option>
      <option value="farmer">Farmer</option>
      <option value="govt_employee">Government Employee</option>
      <option value="software_employee">Software Engineer</option>
      <option value="student">Student</option>

    </select>
  </div>
   <div class="form-group col-md-4">
    <label for="annunal_income">Annual Income</label>
    <select class="form-control" id="income_per_annum" name="income_per_annum"  required>
      <option value="none">None</option>
      <option value="0-1">0-1</option>
      <option value="1-2">1-2</option>
      <option value="2-4">2-4</option>
      <option value="4-8">4-8</option>
    </select>
  </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="email">Email Id</label>
      <input type="email" class="form-control" id="email" name="email" placeholder="email"  required>
    </div>
    <div class="form-group col-md-6">
      <label for="phone_no">Phone Number</label>
      <input type="text" class="form-control" id="phone_no" name="phone_no" placeholder="phone number" size="10"  required>
    </div>
  </div>

  <div class="form-group">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control" id="address" placeholder="1234 Main St" name="address"  required>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="city" name="city"  required>
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
      <select id="state" class="form-control" name="state"  required>
      <option >None</option>
        <option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Puducherry">Puducherry</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Odisha">Odisha</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Telangana">Telangana</option>
<option value="Tripura">Tripura</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Uttarakhand">Uttarakhand</option>
<option value="West Bengal">West Bengal</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="text" class="form-control" id="pincode" name="pincode"  minlength="7" maxlength="7"required>
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="username">Username</label>
      <input type="text" class="form-control" id="username" name="username" placeholder="username"  minlength="8"  required>
    </div>
    <div class="form-group col-md-6">
      <label for="password">Password</label>
      <input type="password" class="form-control" id="password" name="password" placeholder="password"  minlength="8"  required>
    </div>
  </div>
 <div class="text-center"><button type="submit">Register</button></div>

</form>





          </div>

        </div>
<p style="text-align: center;">If u  have an account then <a href="login.jsp">login</a>!!!!</p>
      </div>
    </section><!-- End Contact Section -->
   
    

   

     <!-- ======= What's new  Section ======= -->
    <section id="whats-new" class="whats-new section-bg">
      <div class="container">

        <div class="section-title">
          <h2>Whats's New??</h2>
          <p>There are exciting offers</p>
        </div>

        <div class="row">
          <div class="col-md-6">
            <div class="icon-box">
              <i class="icofont-computer"></i>
              <h4><a href="#">Lorem Ipsum</a></h4>
              <p>Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
            </div>
          </div>
          <div class="col-md-6 mt-4 mt-lg-0">
            <div class="icon-box">
              <i class="icofont-chart-bar-graph"></i>
              <h4><a href="#">Dolor Sitema</a></h4>
              <p>Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p>
            </div>
          </div>
          <div class="col-md-6 mt-4">
            <div class="icon-box">
              <i class="icofont-image"></i>
              <h4><a href="#">Sed ut perspiciatis</a></h4>
              <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
            </div>
          </div>
          <div class="col-md-6 mt-4">
            <div class="icon-box">
              <i class="icofont-settings"></i>
              <h4><a href="#">Nemo Enim</a></h4>
              <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
            </div>
          </div>
          <div class="col-md-6 mt-4">
            <div class="icon-box">
              <i class="icofont-earth"></i>
              <h4><a href="#">Magni Dolore</a></h4>
              <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</p>
            </div>
          </div>
          <div class="col-md-6 mt-4">
            <div class="icon-box">
              <i class="icofont-tasks-alt"></i>
              <h4><a href="#">Eiusmod Tempor</a></h4>
              <p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi</p>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End What's new Section -->

   

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>XYZ</h3>
            <p>
              KLM street <br>
              Patel Nagar<br>
              India <br><br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> xyz@gmail.com<br>
            </p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#about">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Accounts</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Deposits</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Cards</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Loans</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Insurance</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Investments</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Join Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>

        </div>
      </div>
    </div>

    <div class="container d-md-flex py-4">

      <div class="mr-md-auto text-center text-md-left">
        <div class="copyright">
          &copy; Copyright <strong><span>XYZ</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
          Designed by <a href="#">XYZ bank developers</a>
        </div>
      </div>
      <div class="social-links text-center text-md-right pt-3 pt-md-0">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

<!--  js files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>

  

</body>

</html>