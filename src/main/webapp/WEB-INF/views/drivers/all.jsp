<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<h2>Here you can see all drivers</h2>
<table border="1" style="background: lemonchiffon">
    <tr>
        <tb> Id </tb>
        <tb> -Name- </tb>
        <tb> LicenseNumber </tb>
        <tb> Delete </tb>
    </tr>
    <c:forEach items = "${drivers}" var = "driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete</a></td>
        </tr>
    </c:forEach>
    <tr>
    </tr>
</table>
</body>
</html>
