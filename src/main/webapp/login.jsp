<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
      <div class="container">
        <div class="row mt-5 justify-content-center ">
          <div class="col-lg-4">
             <div class="section-title">
          <h2>Login</h2>
          </div>
            <form action="login" method="post" class="form">
            <%if(session.isNew()){
		session.setAttribute("status","");
		out.print("");
	}
            else{
	String s=session.getAttribute("status").toString();
	pageContext.setAttribute("sta",s);
            }
	%>
	<c:if test="${not empty sta }">
	<p style="color:red;"><c:out value="${sta}"/></p>
	</c:if>
		<% session.setAttribute("status","");%>
              
              <div class="form-group">
                <input type="text" name="username" class="form-control" id="username" placeholder="username" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validate"></div>
              </div>
              <div class="form-group">
                <input type="password" class="form-control" name="password" id="password" placeholder="pasword" data-rule="password" data-msg=" insufficient password" />
                  <div class="validate"></div>
              </div>
              <div class="mb-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit">Login</button></div>
            </form>
          </div>

        </div>
<p style="text-align: center;">If u dont have an account then <a href="register.jsp">register</a>!!!!</p>
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