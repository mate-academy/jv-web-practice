<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Manufacturers</title>
</head>
<body>
<h1>Here is all our manufacturers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Country</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td>
                <a href="${pageContext.request.contextPath}/manufacturers/all/delete?id=${manufacturer.id}">
                    <button type="submit">delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
