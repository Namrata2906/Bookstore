<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style>

.nav_menu
{
margin-left:60%;
}
.search-container .search-box
{
font-size:1rem;
}




</style>

</head>
<body>
    <!--Header-->

    <div class="topnav sticky">
    <% String email=session.getAttribute("email").toString();%>
            <h2 style="float:left;margin-left:80px;"><i class="fa fa-book" aria-hidden="true"></i>Bookworm.hub</h2>
            <h1><a href=""><%out.println(email); %> <i class='fas fa-user-alt'></i></a></h1>
            
            <div class="nav_menu">
            <a href="myCart.jsp"><i class='fas fa-cart-arrow-down'></i></a>
            <a href="home.jsp">Home</a>
            
            <a href="myOrders.jsp">My Orders  </i></a>
           
            <a href="#footer">About </i></a>
            <a href="logout.jsp">signout </i></a>
            
            </div>
            <div class="search-container">
         
             <form action="searchHome.jsp" method="post" class="search-box">
             <input type="text" name="search" placeholder="Search">
             <button type="submit"><i class="fa fa-search" ></i></button>
             </form>
             
            </div>
          </div>
         
           
    </body>
           <!--table-->
</html>
      
