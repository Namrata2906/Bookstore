<%@ page errorPage="../error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style>
.sticky h2
{
text-align:left;
font-size:1.4rem;
color:#823898;
padding-left:23px;
}
.sticky p
{
text-align:left;
font-size:.9rem;
color:#823898;
padding-left:23px;
}
.position-menu{
margin-left:62rem;

}

.topnav .logo
{
    font-size: 1.5rem;
    color: var(--blue);
   
    margin-left: 0rem;

}
.topnav
{
    overflow: hidden;
    background-color: #15d7be;
    margin-top: -2rem;}


</style>
</head>
<body>
    <!--Header-->
    <br>
    
    <div class="topnav sticky">
    
   <% String email=session.getAttribute("email").toString();%>
           <h2 class="logo"><i class="fa fa-leaf"></i>the vegis</h2>
         
           <div class="position-menu">
                <a href="addNewProduct.jsp"> AddProduct</a>
            <a href="allProductEditProduct.jsp"> <i class='fab fa-elementor'></i>Products</a>
          
            <a href="ordersReceived.jsp"><i class="fas fa-archive"></i>Orders Received </a>
           
            <a href="../logout.jsp"><i class='fas fa-share-square'></i>Logout </a></div>
       
          </div>
           <br>
           <div>
           <h2 style="font-color:black;">this the admin page for any updation in website</h2>
           
           </div>
           
           
           
          
     </body> 
     </html>     <!--table-->
