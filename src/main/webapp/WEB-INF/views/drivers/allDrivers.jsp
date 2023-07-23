<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Taxi drivers</title>
</head>
<body>
<h2>Drivers list</h2>
<table border="1" class="table_dark">
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>License_number</td>
        <td>Add driver</td>
        <td>Delete driver</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/add">(+)</a></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">(-)</a></td>
        </tr>
    </c:forEach>
</table>
<p><a href="${pageContext.request.contextPath}/index">Back</a></p>
</body>
</html>
