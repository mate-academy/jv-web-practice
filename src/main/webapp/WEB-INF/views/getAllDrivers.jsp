<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
    <h1>All drivers</h1>
    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>License number</th>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td>c:out value="${driver.id}"</td>
                <td>c:out value="${driver.name}"</td>
                <td>c:out value="${driver.licenseNumber}"</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
