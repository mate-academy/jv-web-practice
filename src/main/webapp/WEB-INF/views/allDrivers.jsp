<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Get all drivers</title>
</head>
<body>
<h1>List of drivers</h1>
<table>
   <tr>
      <td>ID</td>
      <td>name</td>
      <td>License Number</td>
      <td>Car(-s) ID</td>>
   </tr>
   <c:forEach items="${drivers}" var="entry">
      <tr>
         <td><c:out value="${entry.key.id}"/></td>
         <td><c:out value="${entry.key.name}"/></td>
         <td><c:out value="${entry.key.licenseNumber}"/></td>
         <td><c:out value="${entry.value}"/></td>
      </tr>
   </c:forEach>
</table>
</body>
</html>
