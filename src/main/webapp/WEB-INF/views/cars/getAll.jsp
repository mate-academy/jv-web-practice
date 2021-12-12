<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<table border="1">
    <tr>
        <th colspan="5"><h1>List of cars</h1></th>
    </tr>
    <tr>
        <th>id</th>
        <th>model</th>
        <th>manufacturer</th>
        <th>drivers</th>
        <th>delete link</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.name}"/>
                </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a></td>
        </tr>
    </c:forEach>
    <tr>
        <th colspan="5"><a href="${pageContext.request.contextPath}/cars/add">Add new car</a></th>
    </tr>
    <tr>
        <th colspan="5"><a href="${pageContext.request.contextPath}/index">Back to main</a></th>
    </tr>
</table>
</body>
</html>
