<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<table>
    <tr> <td>ID</td>
        <td>NAME</td>
        <td>  LICENSE</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td> <c:out value="${driver.id}" /></td>
            <td> <c:out value="${driver.name}" /></td>
            <td> <c:out value="${driver.licenseNumber}" /></td>
        </tr>
    </c:forEach>
    <tr>

    </tr>
</table>
</body>
</html>
