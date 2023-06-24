<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All drivers</title>
  <style><%@include file="/WEB-INF/css/styles.css"%></style>
</head>
<body>
<h1>All drivers</h1>
  <table>
    <thead>
      <tr>
        <th>id</th>
        <th>Name</th>
        <th>License num</th>
        <th>v</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${drivers}" var="driver">
      <tr>
        <td><c:out value="${driver.id}"/></td>
        <td><c:out value="${driver.name}"/></td>
        <td><c:out value="${driver.licenseNumber}"/></td>
        <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete</a></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</body>
</html>
