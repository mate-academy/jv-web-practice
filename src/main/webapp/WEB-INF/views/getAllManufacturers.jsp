<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>GetAllManufacturers</title>
</head>
<body>
<a href="/manufacturers/add">Add new manufacturer</a>
<c:if test="${manufacturers.size() == 0}" >
    <h3>There is no manufacturers</h3>
</c:if>
<c:if test="${manufacturers.size() > 0}" >
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Country</td>
        <td>Options</td>
    </tr>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <tr>
                <td><c:out value="${manufacturer.id}"/></td>
                <td><c:out value="${manufacturer.name}"/></td>
                <td><c:out value="${manufacturer.country}"/></td>
                <td>
                    <a href="/manufacturers/delete/?id=${manufacturer.id}">delete</a>
                </td>
            </tr>
        </c:forEach>
</table>
</c:if>
</body>
</html>