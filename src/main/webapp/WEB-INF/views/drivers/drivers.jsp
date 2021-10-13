<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<h1>List of all drivers</h1>
<table>
    <td>Id</td>
    <td>Name</td>
    <td>License number</td>
    <td></td>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.getId()}" /></td>
            <td><c:out value="${driver.getName()}" /></td>
            <td><c:out value="${driver.getLicenseNumber()}" /></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
