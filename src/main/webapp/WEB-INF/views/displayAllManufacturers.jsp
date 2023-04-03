<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<h1>List of all manufacturers</h1>
<a href="${pageContext.request.contextPath}/displayAllManufacturers/createManufacturer">ADD MANUFACTURER</a><br>
<br>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td><a href="${pageContext.request.contextPath}/displayAllManufacturers/delete?id=${manufacturer.id}">delete
                manufacturer</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>