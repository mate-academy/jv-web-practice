<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<a href="${pageContext.request.contextPath}/">Go to Action menu</a>
<h2>List of manufacturers:</h2>
<table>
    <tr>
        <th>Id</th>
        <th>Manufacturer</th>
        <th>Country</th>
        <th>Action</th>
    </tr>
    <c:forEach var="manufacturer" items="${manufacturers}">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
                Delete the manufacturer with id = ${manufacturer.id} from DB</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>