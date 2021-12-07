<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Makers</title>
</head>
<body>
<h1>Makers</h1>
    <table>
        <tr>
            <td>ID</td>
            <td>NAME</td>
            <td>COUNTRY</td>
            <td>DELETE</td>
        </tr>
        <c:forEach items="${makers}" var="maker">
            <tr>
                <td><c:out value="${maker.id}" /></td>
                <td><c:out value="${maker.name}" /></td>
                <td><c:out value="${maker.country}" /></td>
                <td><a href="${pageContext.request.contextPath}/makers/delete?id=${maker.id}">Delete maker</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
