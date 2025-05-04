<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<p><a href="${pageContext.request.contextPath}/index">To main page</a></p>
<h2>List of all manufacturers:</h2>
<table>
    <tr>
        <th style="border: solid black 1px">
            ID
        </th>
        <th style="border: solid black 1px">
            NAME
        </th>
        <th style="border: solid black 1px">
            COUNTRY
        </th>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}"><- delete this manufacturer</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
