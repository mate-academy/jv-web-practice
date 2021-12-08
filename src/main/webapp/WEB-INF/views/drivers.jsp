<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<h1>Drivers page</h1>
<form method="post">
    <table>
        <tr>
            <td>Driver name</td>
            <td>License number</td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
            </tr>
        </c:forEach>
        <tr>
            <td><button type="button" onclick="window.location.href='/drivers/add';">Add new driver</button></td>
        </tr>
    </table>
</form>
</body>
</html>
