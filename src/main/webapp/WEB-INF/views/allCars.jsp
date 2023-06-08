<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all Cars</title>
</head>
<body>
<h1>List of Cars:</h1>
<table>
    <tr>
        <th>ID</th>
        <th>MODEL</th>
        <th>MANUFACTURER</th>
        <th>COUNTRY</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.manufacturer.country}"/></td>
<%--            <td><a href="${pageContext.request.contextPath}/users/delete?id=${car.id}">delete this user</a></td>--%>
        </tr>
    </c:forEach>
</table>

</body>
</html>
