<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<h1>List of manufacturers</h1>
<table>
    <tr>Id</tr>
    <tr>Name</tr>
    <tr>Country</tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
        <td><c:out value="${manufacturer.id}"/></td>
        <td><c:out value="${manufacturer.name}"/></td>
        <td><c:out value="${manufacturer.country}"/></td>
        <td><a href="${pageContext.request.contextPath}manufacturer/deleteManufacturer?id=${manufacturer.id}">delete</a></td>
        </tr>
    </c:forEach>>
</table>
<button type="button" name="return" ><a href="${pageContext.request.contextPath}/manufacturer/createManufacturer">Add new manufacturers</a></button>
<button type="button" name="return" ><a href="${pageContext.request.contextPath}/cars">Return to table of cars</a></button>
<button type="button" name="return" ><a href="${pageContext.request.contextPath}/drivers">Go to table of drivers</a></button>
</body>
</html>
