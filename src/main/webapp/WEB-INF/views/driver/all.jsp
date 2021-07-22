<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
    <body>
    <h1>List of drivers</h1>
    <table>
        <tr>
            <td>ID</td>
            <td>NAME</td>
            <td>LICENSE NUMBER</td>
        </tr>
    <c:forEach var="driver" items="${drivers}">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
        </tr>
    </c:forEach>
    </table>
</body>
</html>
