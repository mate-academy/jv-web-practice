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
                <td><c:out value="${car.id}" /></td>
                <td><c:out value="${car.model}" /></td>
                <td><c:out value="${car.manufacturer}" /></td>
                <td>
                    <c:forEach items="${car.drivers}" var="driver">
                        <c:out value="${driver.name}" />
                    </c:forEach>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
