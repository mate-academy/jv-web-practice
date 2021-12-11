<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
    <h1>All cars:</h1>
    <table border="1">
        <tr>
            <td>ID</td>
            <td>MODEL</td>
            <td>MANUFACTURER</td>
            <td>DRIVERS</td>
            <td>DELETE</td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.getId()}" /></td>
                <td><c:out value="${car.getModel()}" /></td>
                <td><c:out value="${car.getManufacturer()}" /></td>
                <td>
                    <c:forEach items="${car.getDrivers()}" var="driver">
                        <c:out value="${driver.getName()}" />
                    </c:forEach>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">delete this car</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
