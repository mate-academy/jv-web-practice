<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<h2>
<table>
    <tr><td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVER</td></tr>
    <c:forEach items="${cars}" var="car">
        <tr><td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:forEach items="${car.drivers}" var="driver">
                <c:out value="${driver.name}" /><br>
                </c:forEach>
            </td>
        </tr>
    </c:forEach>
</table>
</h2>
</body>
</html>