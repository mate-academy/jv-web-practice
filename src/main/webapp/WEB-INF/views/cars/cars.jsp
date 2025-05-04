<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Show all cars</title>
</head>
<body>
<h2>List of all cars</h2>
<table>
  <tr>
    <td style="padding: 10px">ID</td>
    <td style="padding: 10px">Model</td>
    <td style="padding: 10px">Manufacturer name</td>
    <td style="padding: 10px">Drivers</td>
    <td style="padding: 10px">Delete car</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td style="padding: 10px"><c:out value="${car.id}"/></td>
      <td style="padding: 10px"><c:out value="${car.model}"/></td>
      <td style="padding: 10px"><c:out value="${car.manufacturer.name}"/></td>
      <td style="padding: 10px">
        <c:set var="splitter" value=";"/>
        <c:forEach items="${car.drivers}" var="driver" varStatus="stat">
          <c:set var="allDrivers" value="${stat.first ? '':allDrivers}${splitter}${driver.name} ${driver.licenseNumber}"/>
        </c:forEach>
          ${fn:replace(allDrivers, splitter, "<br/>")}
        <c:set var="allDrivers" value=""/>
      </td>
      <td style="padding: 10px"><a href="${pageContext.request.contextPath}/cars/drivers?id=${car.id}">get drivers by car</a></td>
      <td style="padding: 10px"><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
