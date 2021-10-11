<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <H1>ALL MANUFACTURERS</H1>
    <table>
        <tr>
            <td>id</td>
            <td>Name</td>
            <td>Country</td>
        </tr>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <tr>
                <td><c:out value="${manufacturer.id}"/></td>
                <td><c:out value="${manufacturer.name}"/></td>
                <td><c:out value="${manufacturer.country}"/></td>
                <td><a href="${pageContext.request.contextPath}/manufacturer/delete?id=${manufacturer.id}">
                    delete this Manufacturer
                </a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
