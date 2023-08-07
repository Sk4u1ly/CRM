<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing</title>
<style>
  /* CSS styles */
  body {
    font-family: Arial, sans-serif;
    background-image: url('img.png');
    background-size: cover;
    background-repeat: no-repeat;
  }
  h2 {
    color: #333;
    font-size: 24px;
    margin-bottom: 20px;
  }
  
  form {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    margin-bottom: 20px;
  }
  
  table {
    width: 100%;
  }
  
  table td {
    padding: 10px;
  }
  
  input[type="text"],
  input[type="email"],
  input[type="number"] {
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
  }
  
  input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }
  
  input[type="submit"]:hover {
    background-color: #45a049;
  }
</style>
</head>
<body>
<h2>Customer Bill</h2>
<form action="billingPage">
  <table>
    <tr>
      <td>First Name</td>
      <td><input type="text" name="firstName" value="${contact.firstName}" /></td>
    </tr>
    <tr>
      <td>Last Name</td>
      <td><input type="text" name="lastName" value="${contact.lastName}" /></td>
    </tr>
    <tr>
      <td>Email</td>
      <td><input type="email" name="email" value="${contact.email}" /></td>
    </tr>
    <tr>
      <td>Mobile</td>
      <td><input type="number" name="mobile" value="${contact.mobile}" /></td>
    </tr>
    <tr>
      <td>Product</td>
      <td><input type="text" name="product"></td>
    </tr>
    <tr>
      <td>Total Bill</td>
      <td><input type="number" name="amount"></td>
    </tr>
    <tr>
      <td></td>
      <td><input type="submit" value="Generate Bill"></td>
    </tr>
  </table>
</form>
</body>
</html>
