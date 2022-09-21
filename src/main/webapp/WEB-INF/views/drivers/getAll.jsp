<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
    <h1>Drivers:</h1>
    <table>
        <tr>
            <td>id</td>
            <td>name</td>
            <td>license number</td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}"></c:out></td>
                <td><c:out value="${driver.name}"></c:out></td>
                <td><c:out value="${driver.licenseNumber}"></c:out></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
