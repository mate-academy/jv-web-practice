<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>My cars</title>
</head>
<body>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Manufacturer</td>
        <td>List of drivers</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/> </td>
            <td><c:out value="${car.model}"/> </td>
            <td><c:out value="${car.manufacturer.name}"/> </td>
            <td><c:forEach items="${car.drivers}" var="driver">
                <c:out value="${driver.name}"/>
            </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
