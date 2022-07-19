<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply for a loan</title>
<!-- styles -->
    
     <link rel="stylesheet" href="MenuBar.css">
     <link rel="stylesheet" href="Apply.css">
 

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
                <li ><a id="menu" class="menu-item" href="../Terms.jsp">Terms & Conditions</a></li>
                <li ><a id="menu" class="menu-item" href="../Privacy.jsp">Privacy Policy</a></li>
                <div class="search-style">
                    
                    <input type="text" placeholder="     Search " name="search">
                    <button> 
                          <span class="name">Search</span>
                    </button>
                    
                </div>

            </ul>
      
    

    <hr class="line1" />
    <br> 
    <h1 id ="welcome">Welcome to the loan section !!</h1>
    <br></br>
    <p id="para5">Please go through the loans details section very carefully</p>
    
     

 
  <form action="loan" method="post">
    <table>
     <tr>
       <th>
         <div class="formstyle1">
          <h1 id="topic">Educational Loan</h1>
          
          <h2 class="subtopics"> Details regarding the loan :</h2>
          Full name:<br></br>
          <input type="text" placeholder="Enter Full Name" name="fullname" required>
          <br></br>
        
          NIC:<br></br>
          <input type="text" placeholder="Enter NIC" name="NIC" required>
          <br></br>
        
          Account Type:<br></br>
          <input type="text" placeholder="Enter Account Type" name="atype" required>
           <br></br>
          Loan amount:
                       <ul>
                        <li>Rs.500,000.00&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp; <input type="radio" id="kids" name="amount" value="cat1" checked></li>
                        <li>Rs.1,000,000.00 &emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="kids" name="amount" value="cat2" checked></li>
                        <li>Rs.1,500,000.00 &emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="kids" name="amount" value="cat3" checked></li>
                        
                        </ul>
           
          Loan Duration:
           <ul>
                <li>3 years&emsp;&emsp;&emsp;&emsp;&emsp; <input type="radio" id="t" name="time" value="3" checked></li>
                <li>5 years&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;<input type="radio" id="t" name="time" value="5" checked></li>
                        
           </ul>
            
            <h2 class="subtopics"> Details regarding the Educational Institute:</h2>
       
            Educational institute:<br></br>
            <input type="text" placeholder="Enter Educational institute" name="institute" required>
            
           <p id="para7">Please upload a copy which is certified from your educational institute  about your student identity</p>
           <p id="para7">Drop file here or click here to upload:</p><br> 
            <input type="file" id="infile " name="identity" required><br></br>
       
         </div>
        </th>
        
        <th>
         <div class="formstyle2">
           
           <br>
           <h2 class="subtopics"> Details regarding the loan borrower:</h2>
           <p id="para7">Please Input the person's name who is responsible for loan (Either you or your parents)</p>
           <input type="text" placeholder="Enter name" name="name" required>
         
            <p id="para7">Loan borrower's occupation (Either yours' or your parents)</p>
            <input type="text" placeholder="Enter job" name="job" required>
         
           <p id="para7">Loan borrower's monthly salary (Either yours' or your parents')</p>
           <input type="text" placeholder="Enter salary" name="Salary" required>
         
           <p id="para7">Upload a letter of recommendation certified by two non-relatives regarding the borrower's ability to repay the loan</p>
           <p id="para7">Drop file here or click here to upload:</p><br> </br>
           <input type="file" id="infile " name="certify" required><br></br>
       
           <button type="submit" id="smtbtn">Apply for the loan</button>
         
         
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
    
</body>
</html>