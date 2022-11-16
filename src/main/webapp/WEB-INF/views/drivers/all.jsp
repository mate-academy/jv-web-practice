<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<h1>Drivers</h1>
<table>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>License No</th>
  </tr>
  <c:forEach items="${driver}" var="driver">
    <tr>
      <td>${driver.getId()}</td>
      <td><c:out value="${product.name}" /></td>
      <td><c:out value="${product.description}" /></td>
      <td><fmt:formatNumber value="${product.price}" type="currency" /></td>
    </tr>
  </c:forEach>
</table>

</body>
</html>
