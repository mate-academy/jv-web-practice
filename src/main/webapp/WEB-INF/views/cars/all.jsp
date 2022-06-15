<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
    <h1>All Cars List:</h1>
    <hr>
    <table>
        <tr>
            <td>ID</td>
            <td>MODEL</td>
            <td>MANUFACTURER</td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.id}" /></td>
                <td><c:out value="${car.model}" /></td>
                <td><c:out value="${car.manufacturer}" /></td>
                <td>
                    <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                        Delete This Car
                    </a>
                </td>
            </tr>
        </c:forEach>
        <hr>
        <a href="${pageContext.request.contextPath}/cars/create">
            Create New Car
        </a>
    </table>
</body>
</html>
