<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Taxi Service</title>
</head>
<body>
<h1>List of cars</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER ID</td>
        <td>DRIVERS</td>
        <td>DELETE</td>
        <form action="${pageContext.request.contextPath}/">
            <input type="submit" value="Go back main page">
        </form>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer}"/></td>
            <td><c:out value="${car.drivers}"/></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a></td>
        </tr>
    </c:forEach>
    <form action="${pageContext.request.contextPath}/cars/add">
        <input type="submit" value="Create New Car">
    </form>
</table>
</body>
</html>
