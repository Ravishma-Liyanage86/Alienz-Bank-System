<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Profile</title>
<!-- styles -->
    <link rel="stylesheet" href="Update.css">
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

      
   <%
   
     String id = request.getParameter("id");
     String NIC= request.getParameter("nic");
    
     
   %>
   <form action="delete" method="post" >
        <table class="tablestyle">
            <tr>
                <th>

                    <!-- first part of the form -->
                    <div class="formstyle2">
                       
                        
                            <h1 id="topic"> Delete My Profile </h1>
                        
                        
                            <h2 class="subtopics"> Account Holder's Personal Information </h2>
                        
                        <br></br>
                        Your Customer ID:&emsp;&emsp;&emsp;&emsp;&emsp; <input type="text" name="id" placeholder="id" value="<%= id %>" readonly><br></br>
                        
                       
                        
                        
                        Your NIC Number:&emsp;&emsp;&emsp;&emsp;&emsp; <input type="text" name="nic" placeholder="name" value="<%= NIC %>" readonly><br></br>
                        
                        <p id="t1">Do you really want to delete your account?</p>
                       
                        <button type="submit" id="smtbtn" name="btnsubmit" value="submit">Delete my profile account</button>
                            <br>
                          
                          

                    </div>


                </th>

            </tr>
        </table>
  </form>   
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