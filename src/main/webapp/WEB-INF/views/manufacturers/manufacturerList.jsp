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
    <h4>Manufacturers List</h4>
    <table>
        <tr>
            <td>| Manufacturer </td>
            <td>| ID </td>
            <td>| Name </td>
            <td>| Country |</td>
        </tr>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <tr>
                <td><a href="${pageContext.request.contextPath}/manufacturers/manufacturerDelete?id=${manufacturer.id}">delete</a></td>
                <td><c:out value="${manufacturer.id}" /></td>
                <td><c:out value="${manufacturer.name}" /></td>
                <td><c:out value="${manufacturer.country}" /></td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <form method="get" action="${pageContext.request.contextPath}/manufacturers/manufacturerCreate">
        <button type="submit">New</button>
    </form>
</body>
</html>
