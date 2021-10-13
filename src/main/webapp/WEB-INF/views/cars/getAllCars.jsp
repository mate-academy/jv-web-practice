<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
</head>
<body>
<h1>All cars</h1>
<table>
    <tr>
        <td>id</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>drivers</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.name}" />
                </c:forEach></td>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
