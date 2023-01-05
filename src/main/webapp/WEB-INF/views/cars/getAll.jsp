<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Upgrade
  Date: 1/5/2023
  Time: 8:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
  <tr>
      <td><h3>ID</h3></td>
      <td><h3>Name</h3></td>
      <td><h3>License</h3></td>
      <td><h3>Drivers</h3></td>
  </tr>
  <c:forEach items="${cars}" var="car">
      <tr>
          <td><c:out value="${car.id}" /></td>
          <td><c:out value="${car.model}" /></td>
          <td><c:out value="${car.manufacturer.name}" /></td>
          <td><c:out value="${car.drivers}" />
          </td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">
                <button> Delete the car </button>
                </a>
            </td>
      </tr>
  </c:forEach>
  <form
      action="${pageContext.request.contextPath}/cars/add">
      <input type="submit" value="Add new Car">
  </form>
  <form
          action="${pageContext.request.contextPath}/cars/addDriverToCar">
      <input type="submit" value="Add Driver to Car">
      </form>
</table>
</body>
</html>
