<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Youth Profile</title>
<link rel="stylesheet" href="Update.css">
<link rel="stylesheet" href="YouthCustomer.css">
<link rel="stylesheet" href="MenuBar.css">
</head>
<body>
<!-- header -->
    <div class="header">
    
   <h1 id="na"> <img src="hImages/alienz.png" width="200px" height="100px " style="vertical-align:baseline;  ">Alienz Bank</h1>
       <br></br>
        <h2 id="au">Your trustworthy financial partner......</h2>
        
    </div>

    <hr class="line1">
   <ul class="menubar">
                <img src="hImages/home1.jpg "  width="40px" height="35px " style="vertical-align:middle;margin-top:5px;margin-left:15px ">
                <img src="hImages/benifits.jpg " width="40px" height="35px" style="vertical-align:middle;margin-top:5px;margin-left:47px">
                <img src="hImages/about.png " width="40px" height="35px" style="vertical-align:middle;margin-top:5px;margin-left:63px">
                <img src="hImages/feedback.jpg " width="40px " height="35px " style="vertical-align:middle;margin-top:5px;margin-left:75px">
                <img src="hImages/terms.jpg " width="40px " height="35px " style="vertical-align:middle;margin-top:5px;margin-left:110px">
                <img src="hImages/privacy.jpg " width="40px " height="35px " style="vertical-align:middle;margin-top:5px;margin-left:145px">
                <li ><a  id="menu" class="menu-item" href="Home.jsp">Home</a></li>
                <li ><a  id="menu" class="menu-item" href="Login.jsp">Benefits</a></li>
                <li ><a id="menu" class="menu-item" href="Index.jsp">About Us</a></li>
                <li ><a id="menu" class="menu-item" href="Feedback.jsp">Feedback</a></li>
                <li ><a id="menu" class="menu-item" href="Terms.jsp">Terms & Conditions</a></li>
                <li ><a id="menu" class="menu-item" href="Privacy.jsp">Privacy Policy</a></li>
                <div class="search-style">
                    
                    <input type="text" placeholder="     Search " name="search">
                    <button> 
                          <span class="name">Search</span>
                    </button>
                    
                </div>

            </ul>
      
    

    <hr class="line1" />
    <br> 
    <jsp:include page="MenuBar.jsp"></jsp:include>
 <table>
  <tr>
   <th>
    <div id = "profile">
      <c:forEach var ="youth" items ="${youthDetails}">
   
       <h3 id="pr">Your Profile</h1>
       <h4 id ="t2">Hi ${youth.fName} ;</h4>
       <p id ="t2">You have a youth type bank account</p>
       
       <c:set var ="id"  value   ="${youth.id}"/>
       <c:set var= "nic" value   ="${youth.nic}"/>
       <c:set var= "fname" value ="${youth.fName}"/>
       <c:set var= "lname" value ="${youth.lname}"/>
       <c:set var= "address" value ="${youth.address}"/>
       <c:set var= "phone" value   ="${youth.phoneno}"/>
       <c:set var= "email" value   ="${youth.email}"/>
     
    Your Customer Id: ${youth.id}
    <br></br>
    Your First name: ${youth.fName}
    <br></br>
    Your last name:${youth.lname}
    <br></br>
    Your Birthday name:${youth.dob}    
    <br></br>
	Your gender name:${youth.gender}
	<br></br>   
	Your address name:${youth.address}
	<br></br>  
	Your NIC name:${youth.nic} 
	<br></br>     
	Your phone number name:${youth.phoneno}
	<br></br>
	Your Email Address:${youth.email}
	<br></br>  
	Your Account Number:${youth.acno} 
	<br></br>     
	Your Bank Account's branch:${youth.branch}   
	<br></br>
	Your Account Type:${youth.acType} 
	<br></br>   
	Your User Name name:${youth.uname} 
	<br></br>    
	Your Password:${youth.password}
	<br></br>
  
   </c:forEach>
  </div>
 </th>
 
 <th>
   <div id = "pro">
     <c:forEach var ="youthLo" items ="${youthLoanDetails}">
   
       <h3 id="pr">Your loan details</h1>
       
       <p id ="t2">You have an educational bank loan</p>
       
      
     
    Your Loan Id: ${youthLo.loanid}
    <br></br>
    Your Full name: ${youthLo.fullName}
    <br></br>
    Your NIC number:${youthLo.cNic}
    <br></br>
    Your Account Type:${youthLo.accountType}    
    <br></br>
	Your Loan Amount Category:${youthLo.amount}
	<br></br>   
	Your loan duration:${youthLo.time}
	<br></br>  
	Your Educational Institute:${youthLo.institute} 
	<br></br>     
	Your loan's borrower's name:${youthLo.bName}
	<br></br>
	   
	 </c:forEach>
	<br></br>
   </div>
   </th>
 
  </tr>
  </table>
  <c:url value ="UpdateYouthCustomer.jsp" var="youthupdate">
      <c:param name ="id" value="${id}"/>
      <c:param name ="nic" value="${nic}"/>
      <c:param name ="fn" value="${fname}"/>
      <c:param name ="ln" value="${lname}"/>
      <c:param name ="ad" value="${address}"/>
      <c:param name ="ph" value="${phone}"/>
      <c:param name ="em" value="${email}"/>
      
      
  </c:url>
  
  <a href="${youthupdate}">
   <button class="mybutton b2" type="submit"  name="btnsubmit" value="submit">Update my profile</button>
  
  </a>
  <br>
  
  <c:url value="deleteYouth.jsp" var="youthDelete">
     <c:param name ="id" value="${id}"/>
     <c:param name ="nic" value="${nic}"/>
  </c:url>
  
  <a href="${youthDelete}">
  <button class="mybutton b3">Delete my profile Account</button>
  </a>
   <br>
   <!-- side bar -->   
  <div id="mySidenav" class="sidenav">
  <a href="https://www.whatsapp.com/" id="whatsap"><img src="images/whatsap.png" width="30" height="30"></a>
  <a href="https://telegram.org/" id="tegrm"><img src="images/tegrm.png" width="30" height="30"></a>
  <a href="https://www.viber.com/" id="wibr"><img src="images/wibr.png" width="30" height="30"></a>
  <a href="https://www.chat.com/" id="ct"><img src="images/ct.png" width="30" height="30"></a>
  <a href="https://www.skype.com/" id="skp"><img src="images/skp.png" width="30" height="30"></a>
   
</div>

<br><br>
<!-- footer -->
<div class="footer">

    <h5 align="center">copyright 2021,Alienz Bank PLC.All rights reserved.</h5>

<div class="ways">
     <a href="#"> <img src="images/cont.png" width="60" height="30"></a>
     <a href="https://wwww.logging-in.com"> <img src="images/in.png" width="30" height="30"></a>
     <a href=https://myaccount.google.com> <img src="images/gle.png" width="30" height="30"></a>
     <a href="https://twitter.com"> <img src="images/Twt.png" width="30" height="30"></a>
     <a href="https://www.pinterest.com/"><img src="images/printerest.png" width="30" height="30"></a>
     <a href="https://www.facebook.com"> <img src="images/faceb.png" width="30" height="30"></a>
     <a href="https://www.youtube.com"><img src="images/Youtb.png" width="30" height="30"></a>
</div>


</div>

   
</body>
</html>