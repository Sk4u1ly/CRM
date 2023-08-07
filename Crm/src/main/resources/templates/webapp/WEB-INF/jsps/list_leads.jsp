<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="//cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
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
            color: #337ab7;
            text-decoration: none;
        }
        
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<a href="listContacts">Contact List</a>
<a href="createLeadPage">Create new Lead</a>
<h2>List All Lead Data</h2>
<table id="usertable">
  <tr>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Source</th>
    <th>Email</th>
    <th>Mobile</th>
  </tr>
  
  <c:forEach var="lead" items="${leads}">
    <tr>
      <td><a href="getLead?id=${lead.id}">${lead.firstName}</a></td>
      <td>${lead.lastName}</td>
      <td>${lead.source}</td>
      <td>${lead.email}</td>
      <td>${lead.mobile}</td>
    </tr>
  </c:forEach>
</table>

<script src="//cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script>
  $(document).ready(function() {
    $("#usertable").DataTable();
  });
</script>
</body>
</html>
