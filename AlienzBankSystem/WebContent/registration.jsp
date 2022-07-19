<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
  <!-- styles -->
    <link rel="stylesheet" href="Registration.css">
   
    <!-- scripts -->
    <script src="regiValidation.js "></script>
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


       <H3 id="welcome" > Welcome to Alienz Bank !</H3>
       <p id="t1">Yours all kinds of financial needs are now in the finger tip distance</p>

   <form action="registration" method="post" >
        <table class="tablestyle">
            <tr>
                <th>

                    <!-- first part of the form -->
                    <div class="formstyle1">
                        <input id="image" type="file" name="prphoto" placeholder="ProfilePhoto" capture required><img src="images/user.jpg" align="left" width="80"> &nbsp;
                        
                            <h1 id="topic"> Register to the banking system </h1>
                        
                        
                            <h2 class="subtopics"> Account Holder's Personal Information </h2>
                        
                        <br></br>

                        First name:&emsp;&emsp;&emsp;&emsp;&emsp; <input type="text" name="fname" placeholder="First Name" required><br></br>

                        Last name     :&emsp;&emsp;&emsp;&emsp;&emsp;<input type="text" id="lname" name="lname" placeholder="Last name" required><br><br> 
                        
                        Date of Birth:&emsp;&emsp;&emsp;&emsp;<input type="date" name="birthday" placeholder="birthday"required>
                        <br></br>

                        Gender :  male: <input type="radio" id="male" name="gender" value="male" checked>&emsp;&emsp;&emsp; female:<input type="radio" id="f" name="gender" value="female" checked><br></br>

                        Address :<br></br>

                        <textarea name="address" rows="7" cols="50" required> </textarea><br></br>
                        <br></br>
                        NIC Number :
                        &nbsp;&nbsp;&emsp;&emsp;&emsp;<input class="form-control" type="text" name="NIC" id="NIC" placeholder="NIC No" required onkeyup="validateNIC();" maxlength=12 />
                        
                        <span id="msg"></span><br></br>
                        Contact Number:
                        &nbsp;&emsp;&emsp;<input type="tel" id="phone" name="phonenumber" placeholder="1234-567-890" pattern="[0-9]{10}" required>
                        <br></br>
                        
                         E-Mail Address:
                        <div class="input">
                         &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="text" name="email" id="email" placeholder="Email address" required onkeyup="validateEmail()">


                        </div>
                        <span id="emailMsg"></span>
                        
                    </div>



                </th>
                <th>
                    <!-- second part of the form -->
                    <div class="formstyle2 ">

                        <h2 class="subtopics"> Information Regarding the bank Account </h2>
                         Bank Account no and Branch:<br></br>



                        Account no:&emsp;&emsp;&emsp;<input type="number" id="quantity" name="accountno" pattern="[0-9]{15}" placeholder="Account No"><br></br>
                        
                        Branch: &emsp;&emsp;&emsp;&emsp;&nbsp; <input type="text" id="branch " name="branch" placeholder="Branch "><br><br>
                        Account Type :<br>
                        <ul>
                        <li>Kids  account&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp; <input type="radio" id="kids" name="atype" value="kids" checked></li>
                        <li>Youth account &emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="kids" name="atype" value="youth" checked></li>
                        <li>Normal account&emsp;&emsp;&emsp;&emsp;&emsp; <input type="radio" id="kids" name="atype" value="normal" checked></li>
                        <li>Senior Citizen account&emsp;&emsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="kids" name="atype" value="senior" checked></li>
                        
                        </ul>
                        
                       
                            
                                <h2 class="subtopics "> Sign-in Information </h2>
                            

                            User Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="text" id="un " name="username" placeholder="user name" required><br></br>
                            New Password : &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="new" id="new" placeholder="new password" pattern="(?=.+\d)(?=.+[a-z])(?=.+[A-Z]).{5,10}" title="Must contain at least one number and one uppercase and lowercase 
                            letter, and at least 8 or more characters" onkeyup='valiadtePassword();' required />

                            <br></br>
                            Confirm Password: &nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="password" name="cpassword" id="cpassword" placeholder="confirm password" pattern="(?=.+\d)(?=.+[a-z])(?=.+[A-Z]).{5,10}" onkeyup='validatePassword();' required />
                            <span id='message'></span>
                            <br></br>
                            <input type="checkbox" name="checkbox" value="agreement">
                            <label for="vehicle1"> I agree to Privacy Policy and Terms and Conditions of Alienz Bank</label><br>
                            <button type="submit" id="smtbtn" name="btnsubmit" value="submit">Create account</button>
                            <br>

                            <div class="alt ">
                                <span class="cbtn "onclick="this.parentElement.style.display='none' ;">&times;</span> password must contain at least one upper case letter, at least one lower case letter, at least one symbol,and at least one number :</p>
                        </div>

                    </div>


                </th>

            </tr>
        </table>
  </form>      
<div id="mySidenav" class="sidenav">
  <a href="https://www.whatsapp.com/" id="whatsap"><img src="images/whatsap.png" width="30" height="30"></a>
  <a href="https://telegram.org/" id="tegrm"><img src="images/tegrm.png" width="30" height="30"></a>
  <a href="https://www.viber.com/" id="wibr"><img src="images/wibr.png" width="30" height="30"></a>
  <a href="https://www.chat.com/" id="ct"><img src="images/ct.png" width="30" height="30"></a>
  <a href="https://www.skype.com/" id="skp"><img src="images/skp.png" width="30" height="30"></a>
   
</div>

<br><br>
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