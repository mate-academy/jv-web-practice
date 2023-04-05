<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
    <form method="get" action="${pageContext.request.contextPath}/home">
        <button type="submit"><--</button>
    </form>
    <h4>Driver List</h4>
    <table>
        <tr>
            <td>| Drivers </td>
            <td>| ID </td>
            <td>| Name </td>
            <td>| License Number |</td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><a href="${pageContext.request.contextPath}/drivers/driverDelete?id=${driver.id}">delete</a></td>
                <td><c:out value="${driver.id}" /></td>
                <td><c:out value="${driver.name}" /></td>
                <td><c:out value="${driver.licenseNumber}" /></td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <form method="get" action="${pageContext.request.contextPath}/drivers/driverCreate">
        <button type="submit">New</button>
    </form>
</body>
</html>
