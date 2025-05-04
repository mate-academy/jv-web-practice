<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<h1>OUR CARS:</h1>
<table>
    <tr>
    <td>ID</td>
    <td>MODEL</td>
    <td>MANUFACTURER</td>
    <td>DRIVERS</td>
    </tr>
    <c:forEach items="${allCarsList}" var="car">
        <tr>
            <td><c:out value ="${car.id}" /></td>
            <td><c:out value ="${car.model}" /></td>
            <td><c:out value ="${car.manufacturer}" /></td>
            <td><c:out value ="${car.drivers}" /></td>
            <td><a href="${pageContext.request.contextPath}cars/delete?id=${car.id}">DELETE</a> </td>

        </tr>
    </c:forEach>
</table>
</body>
</html>
