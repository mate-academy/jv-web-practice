<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<form action="/index">
    <input type="submit" value="Home" />
</form>
<h2>List of cars:</h2>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.id}" />
                    <c:out value="${driver.name}" />
                    <c:out value="${driver.licenseNumber}" /> <br/>
                </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
