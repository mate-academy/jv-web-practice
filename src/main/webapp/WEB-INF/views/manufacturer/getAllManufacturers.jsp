<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
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
  <h1>All manufacturers from data:</h1>
  <table>
      <tr>
          <td>ID</td>
          <td>NAME</td>
          <td>COUNTRY</td>
      </tr>
      <c:forEach items="${manufacturers}" var="manufacturer">
          <tr>
              <td><c:out value="${manufacturer.getId()}" /></td>
              <td><c:out value="${manufacturer.getName()}" /></td>
              <td><c:out value="${manufacturer.getCountry()}" /></td>
          </tr>
      </c:forEach>
  </table>
</div>
</body>
</html>
