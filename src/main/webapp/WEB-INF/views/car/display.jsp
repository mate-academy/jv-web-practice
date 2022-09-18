<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<h1>Drivers list</h1>
<table>
    <tr>
        <td>ID |</td>
        <td>MODEL |</td>
        <td>MANUFACTURER |</td>
        <td>DRIVER NAME |</td>
        <td>DRIVER LICENSE |</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td>
                <div style="text-align: center;"><c:out value="${car.id}"/></div>
            </td>
            <td>
                <div style="text-align: center;"><c:out value="${car.model}"/></div>
            </td>
            <td>
                <div style="text-align: center;"><c:out value="${car.manufacturer}"/></div>
            </td>
            <td>
                <table>
                    <c:forEach items="${car.drivers}" var="driver">
                        <tr>
                            <td><c:out value="${driver.name}"/></td>
                        </tr>
                    </c:forEach>
                </table>
            </td>
            <td>
                <table>
                    <c:forEach items="${car.drivers}" var="driver">
                        <tr>
                            <td><c:out value="${driver.licenseNumber}"/></td>
                        </tr>
                    </c:forEach>
                </table>
            </td>
            <td><a href="${pageContext.request.contextPath}/car/delete?id=${car.id}">Delete car</a></td>
        </tr>
    </c:forEach>
</table>
<br>
<form method="get" action="${pageContext.request.contextPath}/car/add">
    <button type="submit">Add car</button>
</form>
<a href="${pageContext.request.contextPath}/"><<< Back to the main page</a>
</body>
</html>
