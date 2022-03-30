<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get_All_Manufacturers</title>
</head>
<body>
<h1>Get all manufacturers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${allManufacturers}" var="manufacturers">
        <tr>
            <td><c:out value="${manufacturers.id}"/></td>
            <td><c:out value="${manufacturers.name}"/></td>
            <td><c:out value="${manufacturers.country}"/></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturers.id}">DELETE</a></td>
        </tr>
    </c:forEach>
</table>
<td><a href="${pageContext.request.contextPath}/index">Back to taxi</a></td><br>
</body>
</html>
