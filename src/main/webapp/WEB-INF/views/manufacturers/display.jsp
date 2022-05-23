<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>MANUFACTURERS:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${allManufacturersList}" var="manufacturer">
        <tr>
            <td><c:out value ="${manufacturer.id}" /></td>
            <td><c:out value ="${manufacturer.name}" /></td>
            <td><c:out value ="${manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}manufacturers/delete?id=${manufacturer.id}">DELETE</a> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
