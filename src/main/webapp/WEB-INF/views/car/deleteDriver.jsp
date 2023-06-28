<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Remove driver from car</title>
</head>
<body>
<h1>Select driver to remove from car</h1>

<table>
  <tr>
    <td>Driver name</td>
    <td>License number</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td>${driver.getName()}</td>
      <td>${driver.getLicenseNumber()}</td>
      <td><a href="${pageContext.request.contextPath}/cars/drivers/delete?carId=${carId}&driverId=${driver.getId()}">Remove driver</a></td>
    </tr>
  </c:forEach>
</table>

</body>
</html>
