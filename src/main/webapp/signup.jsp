<html>
<head>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Signup</title>
<style>

body {
  background-image: url("bk8.jpg");
  background-repeat:no-repeat;
  background-size:cover;
  
}





.whysignLogin
{
	float: left;
  background-color: white;
  width: 480px;
  height: 347px;
  border-radius: 0 5px 5px 0;
  padding-top: 20px;
  padding-right: 20px;
}
.whyforgotPassword
{
	float: left;
  background-color: white;
  width: 480px;
  height: 470px;
  border-radius: 0 5px 5px 0;
  padding-top: 20px;
  padding-right: 20px;
}


[type=text],[type=email],[type=number],[type=password],select,option {
  display: block;
  margin: 0 auto;
  width: 80%;
  border: 0;
  border-bottom: 1px solid rgba(0,0,0,.2);
  height: 45px;
  line-height: 45px;  
  margin-bottom: 10px;
  font-size: 1em;
  color: black;
}

[type=submit] {
  margin-top: 25px;
  width: 80%;
  border: 0;
  background-color: green;
  border-radius: 5px;
  height: 50px;
  color: white;
  font-weight: 400;
  font-size: 1em;
}

[type='text']:focus {
  outline: none;
  border-color: #53CACE;
}

h1 {
  color: red;
  font-weight: 900;
  font-size: 1rem;
}

p {
  color: rgba(0,0,0,.6);
  font-size: 1.2em;
  margin: 50px 0 50px 0;
}

span {
  font-size: .75em;
  background-color: white;
  padding: 2px 5px;
  color: rgba(0,0,0,.6);
  border-radius: 2px;
  box-shadow: 1px 1px 1px rgba(0,0,0,.3);
  margin: 5px;
}

span:hover {
  color: #53CACE;
}

p:nth-of-type(2) {
  font-size: 1em;
}
#container {
  width: 840px;
  margin: 25px auto;
  margin-top: 0px;
}
.signup {

     float: left;
    width: 25rem;
    
    padding: 75px 140px;
    background-color: none;
    text-align: center;
    border-radius: 31px;
    margin-left: 10%;
    margin-left: 4%;
    height: 25rem;
    margin-top: 80px
    }
    .whysign {
    border:0px solid;
  float: initial;
  background-color: white;
  width: 480px;
  height: 528px;
  border-radius: 0 5px 5px 0;
  padding-top: 20px;
  padding-right: 20px;
}
.signup_a
{
border-radius:10px;

}
.signup_b
{
font-size:1rem;
}
.login_btn:hover {
    background-color: #45a049;
  }
.signup_f
{
border-radius:10px;
}
  




</style>


</head>
<body>
<div id='container'>
	  
  <div class='signup'>
  <h2 style="float:left;margin-left:80px;"><i class="fa fa-book" aria-hidden="true"></i>Bookish</h2>
  <% 
 String msg=request.getParameter("msg");
 if("valid".equals(msg))
 {
%>
<h1>Successfully Registered!!</h1>
<%} %>
<% 
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !!</h1>
<%} %>
   

    <form action="signupAction.jsp" method="post" >
  <input type="text" name ="name" placeholder="Enter Name" required class="signup_f">  
  <input type="email" name ="email" placeholder="Enter Email" required class="signup_f">
  <input type="number" name ="mobileNumber" placeholder="Enter Mobile Number" required class="signup_f">
  
  
  <input type="password" name ="password" placeholder="Enter password" required class="signup_f">
  <input type="submit" value="signup">
   </form>
      <p>already have an account       <a href="login.jsp">Login</a></p>
  
  

  </div>
</div>

</body>
</html>