<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Display all drivers controller</title>
</head>
<body>
<h1>
  There are all the drivers in our DB:
</h1>
<table>
  <tr>
    <td>id</td>
    <td>name</td>
    <td>license number</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id}" /> </td>
      <td><c:out value="${driver.name}" /> </td>
      <td><c:out value="${driver.licenseNumber}" /> </td>
      <td><a href="${pageContext.request.contextPath}/driver-delete?id=${driver.id}">delete driver ${driver.id}</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>

