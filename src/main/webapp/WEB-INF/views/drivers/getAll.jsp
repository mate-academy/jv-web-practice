<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>License Number</td>
        <td>Delete</td>
    </tr>
  <c:forEach items="${drivers}" var="driver">
      <tr>
          <td><c:out value="${driver.id}"></c:out></td>
          <td><c:out value="${driver.name}"></c:out></td>
          <td><c:out value="${driver.licenseNumber}"></c:out></td>
          <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete</a> </td>
      </tr>
  </c:forEach>
</table>
</body>
</html>
