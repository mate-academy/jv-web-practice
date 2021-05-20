<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<h1>List of manufacturers:</h1>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>country</td>
        <td>delete</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.getId()}" /></td>
            <td><c:out value="${manufacturer.getName()}" /></td>
            <td><c:out value="${manufacturer.getCountry()}" /></td>
            <td><button onclick="location.href='${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.getId()}'"
                        type="button">delete this manufacturer</button></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
