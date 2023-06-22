
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Login</title>
<style>
body {
  background-image: url("bk1.jpg");
  background-repeat:no-repeat;
  background-size:cover;
  
}
.signup {
     float: left;
    width: 25rem;
    padding: 75px 140px;
    
    text-align: center;
   border-top-right-radius: 31px;
   border-bottom-right-radius: 31px;
    margin-left: 10%;
    margin-left: 50%;
    height:25rem;
    margin-top:-600px;
    }
.signup_a
{
border-radius:10px;

}
.signup_b
{
font-size:1rem;
}
.signup h2
{
margin-left:-90px;
weight:200;
}
.login_btn:hover {
    background-color: #45a049;
  }
.img{
   
  
  boder-radius:2px solid;
    float: left;
    width: 25rem;
    padding: 75px 140px;
    
    text-align: center;
    border-top-left-radius: 31px;
   border-bottom-left-radius: 31px;
    margin-left: 10%;
    margin-top:80px;
    height:25rem;
  }
  




</style>
</head>
<body>





<div class='img'>
 
 
 </div>
  <div class='signup'>
 
  <%
  String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {
  %>
  <h1>Incorrect Username or Password</h1>
  <%} %>
  <% if("invalid".equals(msg))
  {%>

<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>

   
    
     <div class='signup_a' >
      <h2 style="float:left;margin-left:80px;"><i class="fa fa-book" aria-hidden="true"></i> Be Bookish</h2>
     <form action="loginAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter email" required class="signup_a">
     <input type="password" name="password" placeholder="Enter password" required class="signup_a">
     <input type="submit" value="login" class="login_btn">
     </form>
      <p style="font-size:.8rem;">Don't have any account <a href="signup.jsp" class="signup_b">SignUp</a></p>
       
  </div>
  </div>
 



</body>
</html>