<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<h1>Cars page</h1>
    <table>
        <tr>
            <td>Car model</td>
            <td>Car manufacturer</td>
            <td>Car drivers</td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.model}"/></td>
                <td><c:out value="${car.manufacturer.name}"/></td>
                <td>
                    <c:forEach items="${car.drivers}" var="driver">
                        <c:out value="${driver.name}"/><br>
                        <c:out value="${driver.licenseNumber}"/><br>
                    </c:forEach><br>
                    <a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a>
                </td>
                <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete car</a> </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
