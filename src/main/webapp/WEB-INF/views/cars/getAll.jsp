<%--
  Created by IntelliJ IDEA.
  User: Oleksandr Koval
  Date: 03.04.2023
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Get All Cars</title>
</head>
<body>
<h1>Cars: </h1>

<table>
    <tr>
        <td>CAR ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER ID</td>
        <td>DRIVERS</td>
        <th>DELETE</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer}"/></td>
            <td><c:out value="${car.drivers}"/></td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                    <button type="submit">DELETE</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

