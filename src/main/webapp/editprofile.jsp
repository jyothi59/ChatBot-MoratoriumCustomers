<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.chatbot.dto.LoginDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
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
  <!--  chatbot cc file -->
  <link href="assets/css/chatbot.css" rel="stylesheet">
  <!-- jquery cdn -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <div class="logo mr-auto">
        <h1><a href="#"><img src="assets/img/xyz.png" alt="" class="img-fluid"></a></h1>

      </div>

      <nav class="nav-menu d-none d-lg-block ">
         <ul>
          <li ><a href="welcome.jsp" >Account</a></li>
          <li ><a href="remittances.jsp" >Remittances</a></li>
          <li ><a href="#" class="active" style="color: #3498db;">Edit Profile</a></li>
          <li><a href="index.jsp"><i class="bx bx-exit" style="font-size: 20px;"></i>LogOut</a></li>
        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->
  
  <script>
  var username="${sessionScope.user.username}";
  var loans=[ 
	  <c:forEach items="${sessionScope.info.loans}" var="l">
	  <c:if test="${l.applied_for_moratorium_policy == 'not applied'}">
	  	'<c:out value="${l.loan_type }"/>',
	  	</c:if>
	  </c:forEach>
	  
  ];

  var loans_pending=[
	  <c:forEach items="${sessionScope.info.loans}" var="l">
	  <c:if test="${l.applied_for_moratorium_policy == 'pending'}">
	  	'<c:out value="${l.loan_type }"/>',
	  	</c:if>
	  </c:forEach>
	  
  ];
  console.log(loans);

$( document ).ready(function() {
	  
	  if(loans.length==0){
		  if(loans_pending.length==0){
			  //$('#nopo').removeClass("d-none");
		  }
		  else{
			  $('#nop1').removeClass("d-none");
		  }
	  }
	  else{
		  if(loans_pending.length==0)
			  { console.log("n1p1");
			  $('#n1p1').removeClass("d-none");
			  }
		  else{
			  $('#n1p0').removeClass("d-none");
		  }
	  }
	  

	  
  });
	  

	  
  
  function p_d(){
    $('#default').addClass("d-none");
    $('#p_d').removeClass("d-none");
    $('#u_p').addClass("d-none");
    $('#d_p').addClass("d-none");
    $('#c_p').addClass("d-none");
    $('#c_pin').addClass("d-none");
    $('#c_d').addClass("d-none");
  }
  function u_p(){
	  $('#default').addClass("d-none");
	    $('#p_d').addClass("d-none");
	    $('#u_p').removeClass("d-none");
	    $('#d_p').addClass("d-none");
	    $('#c_p').addClass("d-none");
	    $('#c_pin').addClass("d-none");
	    $('#c_d').addClass("d-none");
  }
  function d_p(){
	  $('#default').addClass("d-none");
	    $('#p_d').addClass("d-none");
	    $('#u_p').addClass("d-none");
	    $('#d_p').removeClass("d-none");
	    $('#c_p').addClass("d-none");
	    $('#c_pin').addClass("d-none");
	    $('#c_d').addClass("d-none");
  }
  function c_p(){
	  $('#default').addClass("d-none");
	    $('#p_d').addClass("d-none");
	    $('#u_p').addClass("d-none");
	    $('#d_p').addClass("d-none");
	    $('#c_p').removeClass("d-none");
	    $('#c_pin').addClass("d-none");
	    $('#c_d').addClass("d-none");
	  
  }
  function c_pin(){
	  $('#default').addClass("d-none");
	    $('#p_d').addClass("d-none");
	    $('#u_p').addClass("d-none");
	    $('#d_p').addClass("d-none");
	    $('#c_p').addClass("d-none");
	    $('#c_pin').removeClass("d-none");
	    $('#c_d').addClass("d-none");
	  
  }
  function c_d(){
	  $('#default').addClass("d-none");
	    $('#p_d').addClass("d-none");
	    $('#u_p').addClass("d-none");
	    $('#d_p').addClass("d-none");
	    $('#c_p').addClass("d-none");
	    $('#c_pin').addClass("d-none");
	    $('#c_d').removeClass("d-none");
  }

  </script>  
   
  <div class="container col-lg-12" style="text-align:right; margin-top:90px;">
    <p>Welcome <span style="color: #3498db">${sessionScope.user.username} </span></p>
  </div>

  <!--  main section -->
  <section >
  <div class="container col-lg-10 content" style="margin-top:-50px;">
    <div class="left-side">
      <!-- navs section -->
      <div class="navs">
        <div>Edit Profile</div>
        <div><a href="#" onclick="return p_d()">Personal Details</a></div>
        <div><a href="#" onclick="return u_p()">Upload Profile Photo</a></div>
        <div><a href="#h" onclick="return d_p()">Delete Profile Photo</a></div>
        <!--  <div ><a href="#h">Aadhar Card Detials</a></div> -->
        <div><a href="#h" onclick="return c_p()">Change Password</a></div>
        <div><a href="#h" onclick="return c_pin()">Change Pin</a></div>
        <div><a href="#h" onlick="return c_d()">Change Daily Limit</a></div>
        <div><a href="#h">Change Fund Transfer</a></div>
        <div><a href="#h">Set Favorite Account</a></div>
         <div><a href="#h">Register Mobile Banking</a></div>
 
      </div>
      <div class="news">
        Incase otp is not recieved  with in 30min
      </div>
    </div>
    <!-- info  section-->
    <div class="info">
      <div class="container col-lg-10 alert st-1" style="padding-top:10px; color:#002b80" id="default">
        <h4> You can change the details registered with us</h4><hr>
        <ul>
        	<li><a href="#h" onclick="return c_p()">Password</a></li>
        	<li><a href="#h" onclick="return c_pin()">Pin numbers</a></li>
        	<li><a href="#h" onlick="return c_d()">Change Daily Limit</a></li>

        </ul>
      </div>
      <div class="container col-lg-10 d-none" style="padding-top:10px; color:#002b80" id="p_d">
      <h3>Personal Detials</h3><hr>
         <div class="container col-md-8" style="margin:auto;">
         <table class="table table-striped">
          <tbody>
            <tr>
              <td>Email Id</td>
              <td>${sessionScope.user.username }</td>
            </tr>
            <tr>
            <td>Phone Number</td>
            <td>${sessionScope.obj.phone_no }</td>
            </tr>
          </tbody>
        </table>
        
        </div>
     
      </div>
      <div class="container col-lg-10 d-none" style="padding-top:10px; color:#002b80" id="u_p">
      <form action="" method="post">
      <h4> Upload your picture</h4><hr>
			<input type="file" id="myFile" name="filename2" class="file btn btn-secondary" >
			<input type="submit" value="upload" class="btn btn-secondary">
      </form>
      </div>
      <div class="container col-lg-10 d-none" style="padding-top:10px; color:#002b80" id="d_p">
      <h4> If you want to delete your picture then click below delete button</h4><hr>
     <center> <a href="#" class="btn btn-secondary">Delete</a></center>
      </div>
      <div class="container col-lg-10 d-none" style="padding-top:10px; color:#002b80" id="c_p">
      <h4>Change Password</h4><hr>
      <form action="#" method="POST">
      <div class="col-md-8" style="margin:auto;"> 
      <table class="table table-bordered">
          <tbody>
            <tr>
              <td>Enter old password</td>
              <td><input type="password" name="old_passkey"></td>
            </tr>
            <tr>
              <td>Enter new password</td>
              <td><input type="password" name="new_passkey"></td>
            </tr>
            <tr>
              <td>Renter new password</td>
              <td><input type="password" name="re_new_passkey"></td>
            </tr>
          </tbody>
        </table>
        <center><input type="submit" class="btn btn-success" value="submit"></center>
       </div>
       </form>
       <br><br>
        <div class=" container col-md-10 alert" role="alert" id="default-1" >
     <h4><i class="bx bx-info-circle" style="font-size:30px;"></i>Instructions</h4><hr>
        <ul>
        <li>Enter a password of length 8 to 15 characters</li>
        <li>Atleast one number ,Alphabets(Uppercase and lowercase) and special character should be included</li>
        <li>Last three passwords cannot be used for security reasons</li>
        </ul>
      </div>

      </div>
      <div class="container col-lg-10 d-none" style="padding-top:10px; color:#002b80" id="c_pin">
      <h4>Change Pin</h4><hr>
      <form action="#" method="POST">
      <div class="col-md-8" style="margin:auto;"> 
      <table class="table table-bordered">
          <tbody>
            <tr>
              <td>Enter current pin</td>
              <td><input type="password" name="old_pin"></td>
            </tr>
            <tr>
              <td>Enter new pin</td>
              <td><input type="password" name="new_pin"></td>
            </tr>
            <tr>
              <td>Renter new pin</td>
              <td><input type="password" name="re_new_pin"></td>
            </tr>
          </tbody>
        </table>
        <center><input type="submit" class="btn btn-success" value="submit"></center>
       </div>
       </form>
              <br><br>
        <div class=" container col-md-10 alert" role="alert" id="default-1" >
     <h4>Instructions</h4><hr>
        <ul>
        <li>Enter numeric pin of length 4</li>
        <li>No alphabets are allowed</li>

        </ul>
      </div>
      </div>
      
      
      <div class="container col-lg-10 d-none" style="padding-top:10px; color:#002b80" id="c_pin">
      <h4> If you want to delete your picture then click below delete button</h4><hr>
     <center> <a href="#" class="btn btn-secondary">Delete</a></center>
      </div>
      <div class="container col-lg-10 d-none" style="padding-top:10px; color:#002b80" id="c_d">
      <h4> If you want to delete your picture then click below delete button</h4><hr>
     <center> <a href="#" class="btn btn-secondary">Delete</a></center>
      </div>
      
      
      <div id="add_recipient" class="d-none container col-lg-10" style="padding-top:10px; color: #3498db">
        <h4>PPF Loan/Deposit</h4>
        <table class="table table-striped">
          <tbody>
            <tr>
              <td>Date</td>
              <td>Mark</td>
              <td>Otto</td>
              <td>@mdo</td>
            </tr>

          </tbody>
        </table>
    
      </div>
      <div id="add_recipient" class="d-none container col-lg-10" style="padding-top:10px; color: #3498db">
        <h4>PPF Loan/Deposit</h4>
        <table class="table table-striped">
          <tbody>
            <tr>
              <td>Date</td>
              <td>Mark</td>
              <td>Otto</td>
              <td>@mdo</td>
            </tr>

          </tbody>
        </table>
    
      </div>
    
    </div>

  </div>
  </section>
  



<!--  chatboticon -->
<div id="chatbot-icon" class="chatbot-icon-holder">
<span class="bx bxs-chat bx-md bx-tada-hover" > </span>

</div>
<!-- chatbot window -->
<div id="chat-window-container" class="d-none">
	<!-- chatbot title bar -->
	<div id="title-bar"><span class="bx bx-minus bx-sm bx-tada-hover"  style="color:white" id="minimize-btn"> </span>
	</div>
	<!-- chatbody -->
	<div id="chat-body">

	<c:choose>
			<c:when test="${empty sessionScope.info.loans }">
			
			</c:when>
			<c:otherwise>
				<div class=" left left-bubble d-none" id="n1po">
				You haven't applied moratorium for any of loans you have Do you want to apply for moratorium in this pandemic situation?<br>
				<button type="button" name="want" value="yes" id="want_yes1" class="btn bot-btn">yes</button>					
				<button name="want" type="button" value="no" id="want_no1"  class=" btn bot-btn">no</button>
				</div>
				<div class=" left left-bubble d-none" id="nop1">
					Already you have applied this moratorium policy for all loans.<br>We will let you know <br><br>Be carefull and take all precautions and be safe.	
				</div>
				<div class=" left left-bubble d-none" id="n1p1">
					Already you have applied this moratorium policy for some of your  loans.<br> Are you interested in applying for remaining loans?
					<button type="button" name="want" value="yes" id="want_yes" class="btn bot-btn">yes</button>					
					<button name="want" type="button" value="no" id="want_no"  class=" btn bot-btn">no</button>
				</div>
	
	</c:otherwise>
	</c:choose>

		<div class=" left left-bubble">
			Hi hello ${sessionScope.user.username }.This is Mini.<br><br>You can ask any doubts regarding applying loans,or about new schemes.
		</div>
	</div>
	<!--  chatbot input -->
	<div id="chat-input">
		<input type="text" id="msg">
		<span class="bx bxs-send bx-sm bx-tada-hover"  style="color:white" id="send-msg"> </span>
	</div>
</div>

</form>


<!--  js files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/js/chatbot.js"></script>

</body>

</html>