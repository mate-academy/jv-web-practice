<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<table border="1">
    <tr>
        <th colspan="3"><h1>List of drivers</h1></th>
    </tr>
    <tr>
        <th style="width:20%">id</th>
        <th style="width:40%">name</th>
        <th style="width:40%">licenseNumber</th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
    <tr>
        <td><c:out value="${driver.id}" /></td>
        <td><c:out value="${driver.name}" /></td>
        <td><c:out value="${driver.licenseNumber}" /></td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
