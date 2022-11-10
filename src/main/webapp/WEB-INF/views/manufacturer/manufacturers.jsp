<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TAXI SERVICE</title>
</head>
<body>
<h3>List of manufacturers:</h3>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}//manufacturer/delete?id=${manufacturer.id}">
                delete this manufacturer</a> </td>

        </tr>
    </c:forEach>
</table>
    <td><a href="${pageContext.request.contextPath}/service"><- back to service menu</a></td>
</body>
</html>
