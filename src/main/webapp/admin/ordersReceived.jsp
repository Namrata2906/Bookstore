<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>

<html>
<head>
<link rel="stylesheet" href="../css/ordersReceived-style.css">
<title>Home</title>
<style>
.th-style
{ width: 25%;}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Orders Received <i class="fas fa-archive"></i></div>
<%
String msg=request.getParameter("msg");
if("cancel".equals(msg))
{
%>
<h3 class="alert">Order Cancel Successfully!</h3>
<%} %>
<%
if("deliverd".equals(msg))
{
%>
<h3 class="alert">Successfully Updated!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>

<table id="customers">
          <tr>
          <th>Mobile Number</th>
            <th scope="col">Product Name</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Country</th>
            
             <th scope="col">Payment Method</th>
              <th scope="col">T-ID</th>
             
             
          </tr>
      <%
      try{
    	  Connection con=ConnectionProvider.getCon();
    	  Statement st=con.createStatement();
    	  ResultSet rs=st.executeQuery("select *from cart inner join product where cart.product_id=product.id and  cart.status='processing'");
    	  while(rs.next())
    	  {
    		  %>
    		  
    		  <tr>
              <td><%=rs.getString(10)%></td>
               <td><%=rs.getString(15)%></td>
                <td><%=rs.getString(3)%></td>
                <td><i class="fa fa-inr"></i> <%=rs.getString(5)%> </td>
                    <td><%=rs.getString(6)%></td>
                   <td><%=rs.getString(7)%></td>
                    <td><%=rs.getString(8)%></td>
                     <td><%=rs.getString(9)%></td>
                
                   <td><%=rs.getString(11)%></td>
                   <td><%=rs.getString(12)%></td>
                   
               
                   
                </tr>
             <%
    	  }
      }
      catch(Exception e)
      {
    	  System.out.println(e);
      }
      %>
        </table>
      <br>
      <br>
      <br>
<%@include file="../footer.jsp" %>
</body>
</html>