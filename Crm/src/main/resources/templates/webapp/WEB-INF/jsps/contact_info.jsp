<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact information</title>
<style>
  /* CSS styles */
  body {
    font-family: Arial, sans-serif;
    background-image: url('img.png');
    background-size: cover;
    background-repeat: no-repeat;
  }
  
  h2 {
    color: whitesmoke;
    font-size: 24px;
    margin-bottom: 20px;
  }
  
  form {
    margin-top: 20px;
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
 
<h2>Contact Information</h2>
First Name: ${contact.firstName}<br/>
Last Name: ${contact.lastName}<br/>
Email: ${contact.email}<br/>
Mobile: ${contact.mobile}<br/>
Source: ${contact.source}<br/>

<form action="composeEmail" method="post">
  <input type="hidden" name="email" value="${contact.email}"/>
  <input type="submit" value="Send Email"/>
</form>

</body>
</html>