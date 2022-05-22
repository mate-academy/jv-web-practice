<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Get all Cars</title>
</head>
<body>
<h1>List of Cars:</h1>
<table>
  <tr>
    <td>Id</td>
    <td>Model</td>
    <td>Manufacturer</td>
    <td>Drivers</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
    <tr>
    <td></td>
    <td></td>
    <td></td>
      <td>Driver_Id</td>
      <td>Driver_Name</td>
      <td>Driver_License_Number</td>
    </tr>
      <td><c:out value="${car.id}" /></td>
      <td><c:out value="${car.model}" /></td>
      <td><c:out value="${car.manufacturer.name}" /></td>
      <td><c:forEach items="${car.drivers}" var="driver">
        <c:out value="${driver.id}" />
        <td><c:out value="${driver.name}" /></td>
        <td><c:out value="${driver.licenseNumber}" /></td>
      </c:forEach>
      </td>
      <td><a href="${pageContext.request.contextPath}/delete-car?id=${car.id}">
        Delete this Car
      </a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
