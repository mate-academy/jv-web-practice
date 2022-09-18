<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Promidor
  Date: 17.09.2022
  Time: 21:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<h3>List of drivers:</h3>
<table>
  <tr>
    <td>Id</td>
    <td>Name</td>
    <td>License number</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.getId()}" /></td>
      <td><c:out value="${driver.getName()}" /></td>
      <td><c:out value="${driver.getLicenseNumber()}" /></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
