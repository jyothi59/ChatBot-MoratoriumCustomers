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
  <link href="assets/css/chatbot.css" rel="stylesheet">
  
  <!-- jquery cdn -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>

<body>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);

if(session.getAttribute("user")==null)
	response.sendRedirect("login.jsp");
%>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <div class="logo mr-auto">
        <h1><a href="#"><img src="assets/img/xyz.png" alt="" class="img-fluid"></a></h1>

      </div>

      <nav class="nav-menu d-none d-lg-block ">
         <ul>
          <li ><a href="#" class="active" style="color: #3498db;">Account</a></li>
          <li ><a href="remittances.jsp">Remittances</a></li>
          <li ><a href="editprofile.jsp">Edit Profile</a></li>
          <li><a href="index"><i class="bx bx-exit" style="font-size: 20px;"></i>LogOut</a></li>
        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->
  
  <script>
    
    function b_e(){
        //all.addClass("d-none");
        $('#balance_enquiry').removeClass("d-none");
        $('#few_transactions').addClass("d-none");
        $('#account_statements').addClass("d-none");
        $('#loans').addClass("d-none");
        $('#view_nominations').addClass("d-none");
        $('#ppf_ld').addClass("d-none");
        $('#deposits').addClass("d-none");
        $('#default-1').addClass("d-none");
        $('#default-2').addClass("d-none");
        $('#default-3').addClass("d-none");


    }
  function l_f_t(){
        $('#balance_enquiry').addClass("d-none");
        $('#few_transactions').removeClass("d-none");
        $('#account_statements').addClass("d-none");
        $('#loans').addClass("d-none");
        $('#view_nominations').addClass("d-none");
        $('#ppf_ld').addClass("d-none");
        $('#deposits').addClass("d-none");
        $('#default-1').addClass("d-none");
        $('#default-2').addClass("d-none");
        $('#default-3').addClass("d-none");

  }
  function l(){
        $('#balance_enquiry').addClass("d-none");
        $('#few_transactions').addClass("d-none");
        $('#account_statements').addClass("d-none");
        $('#loans').removeClass("d-none");
        $('#view_nominations').addClass("d-none");
        $('#ppf_ld').addClass("d-none");
        $('#deposits').addClass("d-none");
        $('#default-1').addClass("d-none");
        $('#default-2').addClass("d-none");
        $('#default-3').addClass("d-none");
  }
  function a_s(){
    $('#balance_enquiry').addClass("d-none");
        $('#few_transactions').addClass("d-none");
        $('#account_statements').removeClass("d-none");
        $('#loans').addClass("d-none");
        $('#view_nominations').addClass("d-none");
        $('#ppf_ld').addClass("d-none");
        $('#deposits').addClass("d-none");
        $('#default-1').addClass("d-none");
        $('#default-2').addClass("d-none");
        $('#default-3').addClass("d-none");

  }
  function d(){
    $('#balance_enquiry').addClass("d-none");
        $('#few_transactions').addClass("d-none");
        $('#account_statements').addClass("d-none");
        $('#loans').addClass("d-none");
        $('#view_nominations').addClass("d-none");
        $('#ppf_ld').addClass("d-none");
        $('#deposits').removeClass("d-none");
        $('#default-1').addClass("d-none");
        $('#default-2').addClass("d-none");
        $('#default-3').addClass("d-none");

  }
  function v_n(){
    $('#balance_enquiry').addClass("d-none");
        $('#few_transactions').addClass("d-none");
        $('#account_statements').addClass("d-none");
        $('#loans').addClass("d-none");
        $('#view_nominations').removeClass("d-none");
        $('#ppf_ld').addClass("d-none");
        $('#deposits').addClass("d-none");
        $('#default-1').addClass("d-none");
        $('#default-2').addClass("d-none");
        $('#default-3').addClass("d-none");

  }
  function p_l(){
    $('#balance_enquiry').addClass("d-none");
        $('#few_transactions').addClass("d-none");
        $('#account_statements').addClass("d-none");
        $('#loans').addClass("d-none");
        $('#view_nominations').addClass("d-none");
        $('#ppf_ld').removeClass("d-none");
        $('#deposits').addClass("d-none");
        $('#default-1').addClass("d-none");
        $('#default-2').addClass("d-none");
        $('#default-3').addClass("d-none");
  }
  
  function get_balance(){
	  $('#view_balance').removeClass("d-none");
	  
  }


  
  var username="${sessionScope.user.username}";
  var loans=[ 
	  <c:forEach items="${sessionScope.info.loans}" var="l">
	  <c:if test="${l.applied_for_moratorium_policy == 'not applied'}">
	  	'<c:out value="${l.loan_type }"/>',
	  	</c:if>
	  </c:forEach>
	  
  ];
  console.log(loans);
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
			  $('#n1po').removeClass("d-none");
		  }
	  }
	  

	  
  });
  

  
  
  </script>  

  
  <div class="container col-lg-12" style="text-align:right; margin-top:90px;">
    <p>Welcome <span style="color: #3498db">${sessionScope.user.username} </span></p>
  </div>
  
  <br>
    <div id="chatboterror"  class="container alert alert-danger " style="margin:auto">
    ${sessionScope.chatbotErrorMessage }Your application is not submitted because you did not select any loan.So open chatbot and once again do the same process
    
  </div>


  <!--  main section -->
  <section >
  <div class="container col-lg-10 content" style="margin-top:-50px;">
    <div class="left-side">
      <!-- navs section -->
      <div class="navs">
        <div>Account</div>
        <div><a href="#" onclick="return b_e()">Balance Enquiry</a></div>
        <div><a href="#" onclick="return l_f_t()">Last Few Transactions</a></div>
        <div><a href="#" onclick="return l()">Loans</a></div>
        <div><a href="#" onclick="return a_s()">Account Statement</a></div>
        <div ><a href="#" onclick="return d()">Deposits</a></div>
        <div><a href="#" onclick="return v_n()">View Nominations</a></div>
        <div><a href="#" onclick="return p_l()" style="">PPF Loan/Deposit</a></div>

      </div>
      <div class="news">
      Important notice<br>
        In case OTP is not recieved  within 30 seconds , please use Resend OTP option OTP will be recieved as Normal SMS instead of Flash Message.
      </div>
    </div>
    <!-- info  section-->
    <div class="info">
      <div class=" container col-md-10 alert  st-1" role="alert" id="default-1" >
        <div>
          <h3>Welcome to Internet Banking</h3>
          <hr>
          <ul>
            <li>We make your Debit Card more Secure with New EMV Chip Card!!!</li>
          </ul>
		
        </div>
      </div>
      <div class=" container col-md-10 alert alert-warning st-2" role="alert" id="default-2" >
        <div>
          <h3>Mobile Banking Registration /Change Password Alert</h3>
          <hr>
          <ul>
            <li>You are yet to Onboard our Mobile Banking Services</li>
            <li>Kindly register using Edit Profile-> Register Mobile Banking</li>
            <li>Your Password is more  than 30 days old</li>
            <li>Kindly chnage using Edit Profile -> Change Password for security reasons</li>
          </ul>
 
        </div>
      </div>
     
       <div id="balance_enquiry" class="d-none container col-lg-10" style="padding-top:10px; ">
        <h3 style="color:#3498db"> To know your balance click below button</h3>
          <hr>
        <div class="container col-md-6" style="margin:auto; padding-top: 50px;">

          <input type="button" class="btn btn-primary" value="Get Balance" style="align-self: center;" onclick="get_balance()"> 
        </div>
        <br>
        <br>
        <br>
        <div class="d-none" id="view_balance">
          Your current Balance is ${sessionScope.info.balance.current_balance} ${sessionScope.info.balance.available_balance}

        </div>
      </div>
      <div id="few_transactions" class="d-none container col-lg-10" style="padding-top:20px; color: #3498db">
        <h4>Last Few Transactions During Last 6 Months Period</h4><hr><br>

		<c:choose>
			<c:when test="${empty sessionScope.info.transactions }">
			<b> <p style="text-align:center;"><c:out value="no transactions until now"/></p></b>
			</c:when>
			<c:otherwise>
			<table class="table table-striped">
          <tbody>
          <tr>
              <td>Date</td>
              <td>Name</td>
              <td>Db/CR</td>
              <td>Amount</td>
            </tr>
          <c:forEach items="${sessionScope.info.transactions}" var="t">
            <tr>
              <td>${t.date }</td>
              <td>${ t.name}</td>
              <td>${ t.db_cr}</td>
              <td>${t.amount}</td>
            </tr>
          </c:forEach>

          </tbody>
        </table>
			
			
			</c:otherwise>
		</c:choose>
    
      </div>
      <div id="account_statements" class="d-none container col-lg-10" style="padding-top:10px; color: #3498db">
        <div class="container col-md-8" style="margin:auto; padding-top: 50px;">
        <form action="" method="POST" >
 
          <select style="align-self: center;" class="form-control" style="width: 300px;">
            <option>--select--</option>

            <option>${sessionScope.user.acc_no}</option>

            <c:forEach items="${sessionScope.info.loans}" var="l">
            <option>${l.loan_no }(${l.loan_type })</option>
            </c:forEach>
            
          </select>
          <br>
          <br>
          <center><input type="button" class="btn btn-primary" value="Get Account Statement" ></center> 
        </form>
        </div>
        <div>
        

        </div>
    
      </div>
      <div id="loans" class="d-none container col-lg-12" style="padding-top:10px; color: #3498db">
        <h4>Loans</h4><hr>
			<c:choose>
			<c:when test="${empty sessionScope.info.loans }">
			<b> <p style="text-align:center;"><c:out value="You dont have any loans so far !!!"/> <br>If you want to apply for the loan then come to our bank.</p></b>
			</c:when>
			<c:otherwise>
			<table class="table table-striped">
          <tbody>
            <tr>
              <td>Loan Id</td>
              <td>Loan Type</td>
              <td>limit</td>
              <td>Outstanding<br>Amount</td>
              <td>Rate of Interest<br>(%p.a)</td>
              <td>Currency</td>
              <td>Applied for<br> moratorium Policy</td>
            </tr>
			 <c:forEach items="${sessionScope.info.loans}" var="l">
			 <tr>
			 <td>${l.loan_no }</td>
			 <td>${l.loan_type }</td>
			 <td>${l.limit }</td>
			 <td>${l.amount }</td>
			 <td>${l.rpa }</td>
			 <td>${l.currency }</td>
			 <td>${l.applied_for_moratorium_policy }</td>
			 </tr>
			 </c:forEach>
          </tbody>
        </table>
        </c:otherwise>
        </c:choose>
			
			
      </div>
      <div id="deposits" class="d-none container col-lg-10" style="padding-top:10px; color: #3498db">
        <h4>Deposits</h4>
        <table class="table table-striped">
          <tbody>
            <tr>
              <td>Deposit name</td>
              <td>amount</td>
              <td>time period</td>
            </tr>

          </tbody>
        </table>
    
      </div>
      <div id="view_nominations" class="d-none container col-lg-10" style="padding-top:10px; color: #3498db">
        <h4>View Nominations</h4>
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
      <div id="ppf_ld" class="d-none container col-lg-10" style="padding-top:10px; color: #3498db">
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

<!-- chatbot section -->
<form name="feed_back" action="saveInfo" method="POST">

<div id="holder d-none">
								<input type="radio" name="r_want" id="r_want_yes" value="yes">
								<input type="radio" name="r_want" id="r_want_no" value="no">
								<input type="text" name="rea" id="rea" value="">
								<input type="radio" name="physical_health" id="Healthy" value="healthy" required>
								<input type="radio" name="physical_health" id="Effected-by-covid-19" value="Effected by covid-19">
								<input type="radio" name="physical_health" id="serious" value="serious">
 								<input type="radio" name="mental_health" id="healthy" value="healthy">
								<input type="radio" name="mental_health" id="stressed" value="stressed">
								<input type="radio" name="extra_loan" id="extra_yes" value="yes">
								<input type="radio" name="extra_loan" id="extra_no" value="no">
								<input  class="btn d-none" id="save" name="submit" type="submit" value="submit" />

</div>

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

   
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/js/chatbot.js"></script>

</body>

</html>