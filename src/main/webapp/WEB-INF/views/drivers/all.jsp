<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<table border="1" cellspacing="0" cellpadding="10">
  <caption>All drivers</caption>
  <tr>
    <th>Id</th>
    <th>Name</th>
    <th>License number</th>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.getId()}"/></td>
      <td><c:out value="${driver.getName()}"/></td>
      <td><c:out value="${driver.getLicenseNumber()}"/></td>
      <td>
        <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.getId()}">Delete</a>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
