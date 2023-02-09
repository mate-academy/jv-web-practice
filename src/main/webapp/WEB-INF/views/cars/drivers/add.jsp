
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<table>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>License number</th>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td>
        <c:out value="${driver.getId()}" />
      </td>
      <td>
        <c:out value="${driver.getName()}" />
      </td>
      <td>
        <c:out value="${driver.getLicenseNumber()}" />
      </td>
      <td>
        <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
          <input type="number" name="car_id" value="${car.getId()}" />
          <input type="number" name="driver_id" value="${driver.getId()}" />
          <button type="submit">add this driver to car</button>
        </form>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
