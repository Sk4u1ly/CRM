<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contacts All</title>
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
  
  table {
    border-collapse: collapse;
    width: 100%;
  }
  
  th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }
  
  th {
    background-color: #f2f2f2;
  }
  
  a {
    color: whitesmoke;
    text-decoration: none;
  }
  
  a:hover {
    text-decoration: underline;
  }
</style>
</head>
<body>
<a href="listall">Lead List</a>
<a href="createLeadPage">Create new Lead</a>
<h2>List All Contacts Data</h2>
<table border>
  <tr>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Source</th>
    <th>Email</th>
    <th>Mobile</th>
    <th>Bill</th>
  </tr>
  
  <c:forEach var="contacts" items="${contacts}">
    <tr>
      <td><a href="getContact?id=${contacts.id}">${contacts.firstName}</a></td>
      <td>${contacts.lastName}</td>
      <td>${contacts.source}</td>
      <td>${contacts.email}</td>
      <td>${contacts.mobile}</td>
      <td><a href="getBilling?id=${contacts.id}">Generate Bill</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
