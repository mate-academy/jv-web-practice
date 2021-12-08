<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<h1>List of manufacturers:</h1>
<table>
    <td>ID</td>
    <td>NAME</td>
    <td>COUNTRY</td>
    <td></td>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.getId()}" /></td>
            <td><c:out value="${manufacturer.getName()}" /></td>
            <td><c:out value="${manufacturer.getCountry()}" /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.getId()}">Delete this manufacturer</a></td>
        </tr>
    </c:forEach>
</table>
<br/>
<a href="${pageContext.request.contextPath}/main">Back to main page</a>
</body>
</html>
