<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
  <h1>Drivers list:</h1>
  <table>
    <td>ID</td>
    <td>Name</td>
    <td>License number</td>
    <c:forEach items="${drivers}" var="driver">
      <tr>
        <td><c:out value="${driver.id}" /> </td>
        <td><c:out value="${driver.name}" /> </td>
        <td><c:out value="${driver.licenseNumber}" /> </td>
      </tr>
    </c:forEach>
  </table>
</body>
</html>
