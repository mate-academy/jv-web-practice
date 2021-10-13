<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<h2>Here you can see all manufacturers</h2>
<table border="1" style="background: lemonchiffon">
    <tr>
        <tb> Id </tb>
        <tb> ---Name--- </tb>
        <tb> ---Country--- </tb>
        <tb> Delete </tb>
    </tr>
    <c:forEach items = "${manufacturers}" var = "manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete</a></td>
        </tr>
    </c:forEach>
    <tr>
    </tr>
</table>
</body>
</html>
