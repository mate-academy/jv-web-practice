<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>display all drivers</title>
</head>
<body>
<h1>Display all drivers</h1>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>licence</td>
    </tr>
    <c:forEach items="${drivers}" var= "driver">
        <tr>
            <td><c:out value="${driver.getId()}"/> </td>
            <td><c:out value="${driver.getName()}"/> </td>
            <td><c:out value="${driver.getLicenseNumber()}"/> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
