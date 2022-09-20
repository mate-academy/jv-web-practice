<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all Cars</title>
</head>
<body>
<h1>List of Cars</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Model</td>
        <td>Manufacturer ID</td>
        <td>Add drivers</td>
        <td>Drivers ID</td>
        <form action="${pageContext.request.contextPath}/car/create">
            <input type="submit" value="Add new car">
        </form>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.id}"/></td>
            <td><a href="${pageContext.request.contextPath}/cars/driver/add">add driver</a></td>
            <c:forEach items="${car.drivers}" var="driver">
                <c:if test="${driver != null}">
                    <td><c:out value ="${driver.id}"/></td>
                </c:if>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
</body>
</html>
