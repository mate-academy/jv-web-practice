<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Manufacturers</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #D8DFF5;
    }

    h1 {
      padding: 20px;
      background-color: #3930f9;
      color: white;
      text-align: center;
      margin: 0;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 15px;
    }

    th, td {
      padding: 4px 8px;
      text-align: center;
      border-bottom: 1px solid #ddd;
    }

    tr:nth-child(even) {
      background-color: #f2f2f2;
    }

    tr:hover {
      background-color: #ddd;
    }

    th {
      background-color: #201f56;
      color: white;
    }
  </style>
</head>
<body>
<h1>Manufacturers</h1>
<table>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Country</th>
    <th>Action</th>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}" /></td>
      <td><c:out value="${manufacturer.name}" /></td>
      <td><c:out value="${manufacturer.country}" /></td>
      <td>
        <form method="post" action="${pageContext.request.contextPath}/manufacturers">
          <input type="hidden" name="id" value="${manufacturer.id}">
          <button type="submit">Delete</button>
        </form>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>