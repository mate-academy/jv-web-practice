<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all drivers</title>
</head>
<body>
<style>
  table {
    border-collapse: collapse;
    width: 100%;
    margin-bottom: 1rem;
    background-color: #fff;
    color: #212529;
    font-size: 0.9rem;
    font-weight: 400;
    line-height: 1.6;
  }
  th, td {
    padding: 0.75rem;
    text-align: left;
    border-bottom: 1px solid #dee2e6;
  }
  th {
    background-color: #e9ecef;
    font-weight: 600;
    text-transform: uppercase;
  }
  td {
    vertical-align: middle;
  }
  tr:nth-child(even) {
    background-color: #f8f9fa;
  }
  a {
    color: #007bff;
    text-decoration: none;
  }
  a:hover {
    color: #0056b3;
    text-decoration: underline;
  }
  h1 {
    font-size: 1.5rem;
    font-weight: 600;
    margin-bottom: 1rem;
    text-align: center;
    clear: left;
  }
  button {
    background-color: #dc3545;
    border: none;
    color: #fff;
    padding: 0.375rem 0.75rem;
    border-radius: 0.25rem;
    cursor: pointer;
  }
</style>
<button style="background-color: #808080; color: #fff; display: inline-block; float: left;"
        onclick="window.location.href='../../..'">
  Back to main menu
</button>
<h1>List of drivers</h1>
<table>
  <thead>
  <tr>
    <th>ID</th>
    <th>NAME</th>
    <th>DRIVER LICENSE</th>
    <th></th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id}"/></td>
      <td><c:out value="${driver.name}"/></td>
      <td><c:out value="${driver.licenseNumber}"/></td>
      <td>
        <form action="driver/delete" method="POST">
          <input type="hidden" name="id" value="${driver.id}" />
          <button type="submit">Delete</button>
        </form>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>
