<%--
  Created by IntelliJ IDEA.
  User: Dastya
  Date: 31.01.2023
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Display all drivers</title>
</head>
<body>
<h1>Display all drivers</h1>
<table>
  <tr>
    <td>id</td>
    <td>name</td>
    <td>license number</td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td>
        <c:out value="${driver.id}"/>
      </td>
      <td>
        <c:out value="${driver.name}"/>
      </td>
      <td>
        <c:out value="${driver.licenseNumber}"/>
      </td>
    </tr>
  </c:forEach>
</table>
<p><a href="${pageContext.request.contextPath}/index">main page</a></p>
</body>
</html>