<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
  <title>Get all cars</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
  <div class="row">
    <h1>List of cars:</h1>
  </div>
  <div class="row">
    <table class="table table-striped">
      <thead>
      <tr>
        <th scope="col">id</th>
        <th scope="col">Model</th>
        <th scope="col">Manufacturer name</th>
        <th scope="col">Manufacturer country</th>
        <th scope="col">Driver(s)</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${cars}" var="car">
        <tr>
          <td><c:out value="${car.id}"/></td>
          <td><c:out value="${car.model}"/></td>
          <td><c:out value="${car.manufacturer.name}"/></td>
          <td><c:out value="${car.manufacturer.country}"/></td>
          <td>
            <c:forEach items="${car.drivers}" var="driver">
              <c:out value="${driver.name}"/>
            </c:forEach>
          </td>
          <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>
</div>
</body>
</html>
