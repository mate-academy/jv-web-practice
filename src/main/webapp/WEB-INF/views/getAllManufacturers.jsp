<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>List of manufacturers:</h1>
    <table style="border-bottom: 1px">
        <tr>
            <th style="width: 200px">NAME</th>
            <th style="width: 200px">COUNTRY</th>
            <th style="width: 200px">DELETE</th>
        </tr>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <tr>
                <td><c:out value="${manufacturer.name}"/></td>
                <td><c:out value="${manufacturer.country}"/></td>
                <td><a href="${pageContext.request.contextPath}/getAllManufacturers/delete?id=${manufacturer.id}">delete this manufacturer</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
