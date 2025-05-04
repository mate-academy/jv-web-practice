<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<h1> LIST OF USERS</h1>
<table>
  <tr>
  <td>ID</td>
      <td>NAME</td>
      <td>License Number</td>
  </tr>
    <c:forEach items = "${drivers}" var = "driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value = "${driver.name}" /></td>
            <td><c:out value = "${driver.licenseNumber}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

