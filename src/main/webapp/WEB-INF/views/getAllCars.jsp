<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>getAllCars</title>
</head>
<body>
<h1>List of Cars</h1>
<table border="1px solid black">
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>LIST_OF_DRIVERS</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.id}"/></td>
            <td>
                <d:forEach items="${car.drivers}" var="driver">
                    <d:out value="${driver.name}"/>
                </d:forEach>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete car ${car.model}</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
