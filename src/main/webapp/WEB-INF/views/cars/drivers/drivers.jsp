<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<h2><a href="/">Main page</a> </h2>
<h1>List all driver:</h1>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>license_number</td>
        <td>delete</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><a href="/drivers/delete?id=${driver.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
