<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Select driver to add to car</h1>

<table>
  <tr>
    <td>Driver name</td>
    <td>License number</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td>${driver.getName()}</td>
      <td>${driver.getLicenseNumber()}</td>
      <td><a href="${pageContext.request.contextPath}/cars/drivers/add?carId=${carId}&driverId=${driver.getId()}">Add driver</a></td>
    </tr>
  </c:forEach>
</table>

</body>
</html>
