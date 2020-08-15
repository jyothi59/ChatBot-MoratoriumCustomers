<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%session.setAttribute("status",""); %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Bank XYZ</title>
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

  <!-- ======= intro Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <div class="container text-center text-md-left" data-aos="fade-up">
      <h1>Welcome to <span>XYZ</span></h1>
      <h2>This bank provides all kind of facilities you want.</h2>
      <a href="#about" class="btn-get-started scrollto">Get Started</a>
    </div>
  </section>
  <!-- End intro -->

  <main id="main">

    <!-- ======= What We Do Section ======= -->
    <section id="what-we-do" class="what-we-do">
      <div class="container">

        <div class="section-title">
          <h2>What We provide</h2>
          <p>We provide loan,insurances,deposits at your comfort zone</p>
        </div>

        <div class="row">
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
            <div class="icon-box">
              <div class="icon"><img src="assets/img/loan.png"></i></div>
              <h4><a href="">Loans</a></h4>
              <p>Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
            <div class="icon-box">
              <div class="icon"><img src="assets/img/insurance.png"></div>
              <h4><a href="">Insurances</a></h4>
              <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0">
            <div class="icon-box">
              <div class="icon"><img src="assets/img/deposit.JPG"></div>
              <h4><a href="">Deposits</a></h4>
              <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End What We Do Section -->

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="row">
          <div class="col-lg-6">
            <img src="assets/img/bank.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <h3>About Us</h3>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
            </p>
            <ul>
              <li><i class="bx bx-check-double"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
              <li><i class="bx bx-check-double"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
            </ul>
            <div class="row icon-boxes">
              <div class="col-md-6">
                <i class="bx bx-receipt"></i>
                <h4>Corporis voluptates sit</h4>
                <p>Consequuntur sunt aut quasi enim aliquam quae harum pariatur laboris nisi ut aliquip</p>
              </div>
              <div class="col-md-6 mt-4 mt-md-0">
                <i class="bx bx-cube-alt"></i>
                <h4>Ullamco laboris nisi</h4>
                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

   

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