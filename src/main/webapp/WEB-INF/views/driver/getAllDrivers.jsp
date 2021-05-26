
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
    <style>
        body{
            background-color: azure;    }
        div {
            text-align: center;
        }
    </style>
</head>
<body>
<div>
  <h1>All drivers from data:</h1>
  <table>
      <tr>
          <td>Driver ID</td>
          <td>Driver NAME</td>
          <td>LICENSE NUMBER</td>
      </tr>
      <c:forEach items="${drivers}" var="driver">
          <tr>
              <td><c:out value="${driver.getId()}" /></td>
              <td><c:out value="${driver.getName()}" /></td>
              <td><c:out value="${driver.getLicenseNumber()}" /></td>
          </tr>
      </c:forEach>
  </table>
</div>
</body>
</html>
