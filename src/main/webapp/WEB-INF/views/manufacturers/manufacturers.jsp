<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<h1>List of all manufacturers</h1>
<table>
    <td>Id</td>
    <td>Name</td>
    <td>Country</td>
    <td></td>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.getId()}" /></td>
            <td><c:out value="${manufacturer.getName()}" /></td>
            <td><c:out value="${manufacturer.getCountry()}" /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
