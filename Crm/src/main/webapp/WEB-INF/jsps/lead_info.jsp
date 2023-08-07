<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lead Information</title>
<style>
  /* CSS styles */
  body {
    font-family: Arial, sans-serif;
    background-image: url('img.png');
    background-size: cover;
    background-repeat: no-repeat;
  }
  
  h2 {
    color:whitesmoke;
    font-size: 24px;
    margin-bottom: 20px;
  }
  
  form {
    margin-bottom: 20px;
  }
  
  label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
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
<h2>Lead Information</h2>
<p>
  <strong>First Name:</strong> ${lead.firstName}<br/>
  <strong>Last Name:</strong> ${lead.lastName}<br/>
  <strong>Email:</strong> ${lead.email}<br/>
  <strong>Mobile:</strong> ${lead.mobile}<br/>
  <strong>Source:</strong> ${lead.source}<br/>
</p>
<form action="composeEmail" method="post">
  <input type="hidden" name="email" value="${lead.email}" />
  <input type="submit" value="Send Email" />
</form>
<form action="convertLead" method="post">
  <input type="hidden" name="id" value="${lead.id}" />
  <input type="submit" value="Convert" />
</form>
</body>
</html>
