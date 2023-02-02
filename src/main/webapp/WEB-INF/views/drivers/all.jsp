<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<p><a href="${pageContext.request.contextPath}/index">To main page</a></p>
<h2>List of all drivers:</h2>
<table>
    <tr>
        <th style="border: solid black 1px">
            ID
        </th>
        <th style="border: solid black 1px">
            NAME
        </th>
        <th style="border: solid black 1px">
            LICENSE NUMBER
        </th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}"><- delete this driver</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>