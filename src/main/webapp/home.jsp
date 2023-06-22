<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Home</title>
<link rel="stylesheet" href="css/home-style.css">
<style>
   body {
  font-family: "Open Sans", sans-serif;
  line-height: 1.25;
  background-color: rgb(255, 255, 255);
}
a
h3
{
	color: yellow;
	text-align: center;
}
.home
{
    border: 1px;
    justify-content: center;
    display: flex;
    background: url("bk8.jpg") no-repeat;
    background-position: center;
    background-size: cover;
    padding-top: 0rem;
    padding-bottom: 13rem;
    background-color:equa;

}
.home .content{
    border: 1px;
    text-align: center;
    width: 60rem;
}
.home .content h3{
    color: var(--blue);
    font-size: 3rem;
}
.home .content p{
    color: var(--blue);
    font-size: 1.9rem;
}
.home .content h3 span 
{
    color: green;
}


<
.topnav {
		
      overflow: hidden;
      background-color: #e9e9e9;
      margin-top:-2rem;
    }
    table {
  border: 0px solid #ccc;
  border-collapse: collapse;
  margin-top:-10rem;
  padding: 0;
  width: 100%;
  /*margin-left: 5%;*/
  table-layout: fixed;
}

.container{
   display: grid;
  grid-template-columns: auto auto auto;
  background-color: #f9fbfa;
  padding: 10px;
  
}
.container .container_item
{
       background-color: rgb(255 255 255);
    border: 0px solid rgba(0, 0, 0, 0.8);
    padding: 18px;
    font-size: 20px;
    text-align: center;
    height: 335px;
    width: 484px;
    border-radius: 16px

}
.container .container_item .td
{

}

</style>
</head>
<body>
<section class="home" id="home">
        <div class="content">
            <h3>Books and Novels</h3>
            <p>
            The website for knowledge as well as fun...
            </p>
           
        </div>
    </section>

<%
String msg=request.getParameter("msg");
if("added".equals(msg))
{
%>
<h3 class="alert">Product added successfully!</h3>
<%} %>
<%
if("exist".equals(msg))
{
%>
<h3 class="alert">Product already exist in you cart! Quantity  increased!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Something went wrong! Try Again later!</h3>
<%} %>

<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement st= con.createStatement();
	ResultSet rs=st.executeQuery("select *from product where active='Yes'");
	while(rs.next())
	{
		%>
       <div class="container">
        <div class="col-md-4">
          <div class="container_item">
         
                
               <div class="td"><img src="<%=rs.getString(6) %>" height=200 ></div>
               
            	<div class="td"><%=rs.getString(2) %></div>
            	<div class="td"><%=rs.getString(3) %></div>
            	<div><i class="fa fa-inr"></i><%=rs.getString(4) %></div>
	            <div><a href="addToCartAction.jsp?id=<%=rs.getString(1)%>">Add to cart </a></div>
          </div>
          </div>
      </div>
          <% 
	}
}
catch(Exception e)
{
	System.out.println(e);
}%>
     
    <%@include file="footer.jsp" %>

      

</body>
</html>




