<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>get cars with drivers</title>
  </head>

  <body>
    <jsp:include page="../header.jsp"/>
    <div class="content">
      <table class="__table">
        <thead>
        <tr>
          <th>Model</th>
          <th>Manufacturer name</th>
          <th>Manufacturer country</th>
          <th>Driver name</th>
          <th>Driver license</th>
        </tr>
        </thead>
        <tbody>
        <jsp:useBean id="carDrivers" scope="request" type="java.util.Map"/>
        <c:forEach var="driver" items="${carDrivers}">
          <c:forEach var="car" items="${driver.value}">
            <tr>
              <td>${car.getModel()}</td>
              <td>${car.getManufacturer().getName()}</td>
              <td>${car.getManufacturer().getCountry()}</td>
              <td>${driver.key.getName()}</td>
              <td>${driver.key.getLicenseNumber()}</td>
            </tr>
          </c:forEach>
        </c:forEach>
        </tbody>
      </table>
    </div>
  </body>
</html>
