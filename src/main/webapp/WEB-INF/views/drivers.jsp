<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<h1>List of drivers</h1>
<table>
    <tr>
    <th>ID</th>
    <th>Name</th>
    <th>LicenseNumber</th>
    <th>Delete</th>
    </tr>

    <c:forEach items="${drivers}" var="driver">
    <tr>
        <td><c:out value="${driver.id}" /> </td>
        <td><c:out value="${driver.name}" /> </td>
        <td><c:out value="${driver.licenseNumber}" /> </td>
        <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete this driver</a> </td>
    </tr>
    </c:forEach>
</table>

</body>
</html>
