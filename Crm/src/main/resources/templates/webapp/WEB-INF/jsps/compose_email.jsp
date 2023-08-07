<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Email</title>
<style>
  /* CSS styles */
  body {
    font-family: Arial, sans-serif;
    background-image: url('img.png');
    background-size: cover;
    background-repeat: no-repeat;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }
  
  form {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    width: 400px;
  }
  
  input[type="text"],
  textarea {
    width: 100%;
    padding: 5px;
    border-radius: 3px;
    border: 1px solid #ccc;
    margin-bottom: 10px;
  }
  
  textarea {
    height: 200px;
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
  <form action="sendEmail" method="post">
    <label for="to">To:</label>
    <input type="text" name="to" id="to" value="${email}" />
    <br />
    <label for="subject">Subject:</label>
    <input type="text" name="subject" id="subject" />
    <br />
    <label for="emailBody">Compose:</label>
    <br />
    <textarea rows="15" cols="50" name="emailBody" id="emailBody"></textarea>
    <br />
    <input type="submit" value="Send Email" />
  </form>
</body>
</html>
