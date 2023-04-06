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
<button style="background-color: #808080; color: #fff;"
        onclick="window.location.href='${pageContext.request.contextPath}/car'">
  Back to list of all cars
</button>
<h1>List of drivers by car with id ${id}</h1>
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
        <form action="/car/drivers/remove" method="POST">
          <input type="hidden" name="driver_id" value="${driver.id}" />
          <input type="hidden" name="car_id" value="${id}" />
          <button type="submit">Remove</button>
        </form>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>
<form action="/car/drivers/search" method="POST">
  <input type="hidden" name="car_id" value="${id}" />
<button style="background-color: #808080; color: #fff; width: 500px;">
  Add new driver
</button>
</form>
</body>
</html>
