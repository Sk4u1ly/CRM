<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Purchased Bill</title>
<style>
  /* CSS styles */
  body {
    font-family: Arial, sans-serif;
    background-image: url('img.png');
    background-size: cover;
    background-repeat: no-repeat;
  }
  
  a {
    text-decoration: none;
    color: #333;
    font-weight: bold;
  }
  
  a:hover {
    color: #4CAF50;
  }
  
  .bill-info {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    margin-bottom: 20px;
  }
  
  .bill-info h2 {
    color: #333;
    font-size: 24px;
    margin-bottom: 10px;
  }
  
  .bill-info p {
    margin-bottom: 5px;
  }
</style>
</head>
<body>
<a href="createLeadPage">Create new Lead</a><br/><br/>
<div class="bill-info">
  <h2>Purchased Bill</h2>
  <p>Name: ${bill.firstName} ${bill.lastName}</p>
  <p>Email: ${bill.email}</p>
  <p>Mobile: ${bill.mobile}</p>
  <p>Product: ${bill.product}</p>
  <p>Total Amount: ${bill.amount}</p>
</div>
</body>
</html>
