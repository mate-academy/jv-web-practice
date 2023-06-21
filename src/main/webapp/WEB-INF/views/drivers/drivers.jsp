<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Show all drivers</title>
</head>
<body>
<h2>List of all drivers</h2>
<table>
  <tr>
    <td style="padding: 10px">ID</td>
    <td style="padding: 10px">Name</td>
    <td style="padding: 10px">License number</td>
    <td style="padding: 10px">Delete driver</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td style="padding: 10px"><c:out value="${driver.id}"/></td>
      <td style="padding: 10px"><c:out value="${driver.name}"/></td>
      <td style="padding: 10px"><c:out value="${driver.licenseNumber}"/></td>
      <td style="padding: 10px"><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete this driver</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
