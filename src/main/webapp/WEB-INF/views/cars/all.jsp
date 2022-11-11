<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<tr>
  <td>ID</td>
  <td>MODEL</td>
  <td>MANUFACTURER</td>
  <td>COUNTRY</td>
  <td>DRIVERS ID</td>
  <td>DRIVERS NAME</td>
  <td>DRIVERS LICENSE NUMBER</td>
</tr><br />
<c:forEach items="${cars}" var="car">
  <tr>
  <td><c:out value ="${car.id}"/></td>
  <td><c:out value ="${car.model}"/></td>
  <td><c:out value ="${car.manufacturer.id}"/></td>
  <td><c:out value ="${car.manufacturer.name}"/></td>
  <td><c:out value ="${car.manufacturer.country}"/></td>
    <td><a href = "${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete car</a></td>
  </tr><br />
  <c:forEach items="${car.drivers}" var="driver">
    <tr>
      <td><c:out value ="${driver.id}"/></td>
      <td><c:out value ="${driver.name}"/></td>
      <td><c:out value ="${driver.licenseNumber}"/></td>
    </tr><br />
  </c:forEach>

</c:forEach>

  </tr>
</body>
</html>
