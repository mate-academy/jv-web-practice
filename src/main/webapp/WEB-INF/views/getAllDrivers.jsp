<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
    <h1>ALL DRIVERS</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>License Number</td>
    </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}" /></td>
                <td><c:out value="${driver.name}" /></td>
                <td><c:out value="${driver.licenseNumber}" /></td>
            </tr>
        </c:forEach>
</table>
    <div>
        <button class="w3-btn w3-round-large" onclick="location.href='/index'">INDEX</button>
    </div>
</body>
</html>
