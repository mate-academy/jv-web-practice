<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>This is all drivers</title>
</head>
<body><h1>List of drivers</h1>
<table>
    <tr>
        <td>|ID|</td>
        <td>|NAME|</td>
        <td>|LICENSE_NUMBER|</td>
        <td>|DELETE|</td>
    </tr>
    <c:forEach items="${driver}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/> </td>
            <td><c:out value="${driver.licenseNumber}"/> </td>
            <td><a href="${ageContext.request.contextPath}/driver/delete?id=${driver.id}">Delete this driver</a></td>
        </tr>
    </c:forEach>
</table>
<form method="get" action="${ageContext.request.contextPath}/">
    <button type="submit">Back to home</button>
</form>
</body>
</html>
