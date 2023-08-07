<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Lead</title>
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
    padding: 10px;
    border-radius: 5px;
  }
  
  table {
    margin-bottom: 20px;
  }
  
  td {
    padding: 10px;
  }
  
  input[type="text"],
  input[type="email"],
  input[type="number"],
  select {
    width: 100%;
    padding: 5px;
    border-radius: 3px;
    border: 1px solid #ccc;
  }
  
  input[type="submit"] {
    padding: 10px 20px;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
  }
  
  input[type="submit"]:hover {
    background-color: #45a049;
  }
</style>
</head>
<body>
<h2>Create | Lead</h2>
<form action="save" method="post">
<table>
<tr>
  <td>First Name</td>
  <td><input type="text" name="firstName"/></td>
</tr>
<tr>
  <td>Last Name</td>
  <td><input type="text" name="lastName"/></td>
</tr>
<tr>
  <td>Email</td>
  <td><input type="email" name="email"/></td>
</tr>
<tr>
  <td>Mobile</td>
  <td><input type="number" name="mobile"/></td>
</tr>
<tr>
  <td>Source:</td>
  <td>
    <select name="source">
      <option value="newspaper">Newspaper</option>
      <option value="tvcommercial">TV Commercial</option>
      <option value="online">Online</option>
      <option value="seminar">Seminar</option>
    </select>
  </td>
</tr>
<tr>
  <td colspan="2"><input type="submit" value="Save"/></td>
</tr>
</table>
</form>
</body>
</html>