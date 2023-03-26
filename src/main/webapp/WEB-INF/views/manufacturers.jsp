<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <style >
    table, th, td {
      border: 1px solid black;
      border-collapse: collapse;
      vertical-align: middle;
      text-align: center;
    }
  </style>
  <title>Display all manufacturers</title>
</head>
<body>
<h3>List of manufacturers:</h3>
<table>
  <tr>
    <th>Id</th>
    <th>Name</th>
    <th>Country</th>
    <th>Delete button</th>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}" /></td>
      <td><c:out value="${manufacturer.name}" /></td>
      <td><c:out value="${manufacturer.country} "/></td>
      <td>
        <form method="post" action="${pageContext.request.contextPath}/manufacturers/delete">
          <button name="manufacturerId" type="submit" value="${manufacturer.id}"> Delete </button>
        </form>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>