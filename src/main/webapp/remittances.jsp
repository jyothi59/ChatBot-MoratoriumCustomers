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
  <!-- chatbot css file -->
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
          <li ><a href="#" class="active" style="color: #3498db;">Remittances</a></li>
          <li ><a href="editprofile.jsp">Edit Profile</a></li>
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
			  {
			  $('#n1p1').removeClass("d-none");
			  }
		  else{
			  $('#n1p0').removeClass("d-none");
		  }
	  }
	  

	  
  });
  function a_d(){
    $('#add-payee-1').removeClass("d-none");
    $('#default-1').addClass("d-none");
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
        <div>Remittances</div>
        <div><a href="#" onclick="return a_d()">Add Payee</a></div>
        <div><a href="#">View Payee</a></div>
        <div><a href="#">Remove Payee</a></div>
        <div><a href="#">Fund Transfer</a></div>
        

      </div>
      <div class="news">
        Incase otp is not recieved  with in 30min
      </div>
    </div>
    <!-- info  section-->
    <div class="info">
     <div class=" container col-md-10 alert  st-1" role="alert" id="default-1" >
     <h4>Alert !!</h4><hr>
        <p>Fund Transfer for newly added payee will be enabled only after 4 hours with maximun amount restricted to Rs.50,000 for subsquent 20 hours.</p>
      </div>
       <div id="add-payee-1" class="d-none container col-lg-10" style="padding-top:10px; color: #002b80">
       	<h3>Addition of Payee </h3>
       	<hr>
       	As a matter of precaution adhering to RBI guidelines,we have restricted addition of No.of beneficiaries (payees) per day to5.Please click submit to proceed. 
    	<br><br>
    	<div class=" container col-md-12 alert  st-1" role="alert" >
          <b><p>Fund Transfer for newly added payee will be enabled only after 4 hours with maximum amount restricted to Rs.50,000.</p></b>
      </div>
      		<center><input type="button" value="submit" class="btn btn-success" onclick="submit_a_d()"></center>
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