<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>My team</title>
</head>
<body>
<h1>List of drivers:</h1>
<table>
  <tr>
    <td>Id</td>
    <td>Name</td>
    <td>License number</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.getId()}"/> </td>
      <td><c:out value="${driver.getName()}"/> </td>
      <td><c:out value="${driver.getLicenseNumber()}"/> </td>
      <td><a href="${pageContext.request.contextPath}/driver/delete?id=${driver.id}">DELETE</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
