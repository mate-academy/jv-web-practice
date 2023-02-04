<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>All Cars</title>
</head>
<body>
<h1>Here is all our cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer</td>
        <td>Drivers' List</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer}" /></td>
            <td><c:out value="${car.drivers}" /></td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/all/delete?id=${car.id}">
                    <button type="submit">delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
