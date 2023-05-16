<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>GetAllDrivers</title>
</head>
<body>
<a href="/drivers/add">Add new driver</a>
<c:if test="${drivers.size() == 0}" >
    <h3>There is no drivers</h3>
</c:if>
<c:if test="${drivers.size() > 0}" >
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>LicenseNumber</td>
        <td>Options</td>
    </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}"/></td>
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
                <td>
                    <a href="/drivers/delete/?id=${driver.id}">delete</a>
                </td>
            </tr>
        </c:forEach>
</table>
</c:if>
</body>
</html>