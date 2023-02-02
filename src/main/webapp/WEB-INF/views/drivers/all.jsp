<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENCE NUMBER</td>
    </tr>
    <c:forEch items="${drivers}" var="driver">
        <tr>
            <td>c:out value="${driver.id}" /></td>
            <td>c:out value="${driver.name}" /></td>
            <td>c:out value="${driver.licenseNumber}" /></td>
        </tr>
    </c:forEch>
</table>
</body>
</html>
