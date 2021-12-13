<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All drivers</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/index.jsp"></jsp:include>
<hr>
<h2>Drivers</h2>
<table>
  <tr>
    <td><h3>ID</h3></td>
    <td><h3>NAME</h3></td>
    <td><h3>LICENSE NUMBER</h3></td>
  </tr>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><h4><c:out value="${driver.id}"/></h4></td>
      <td><h4><c:out value="${driver.name}"/></h4></td>
      <td><h4><c:out value="${driver.licenseNumber}"/></h4></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
