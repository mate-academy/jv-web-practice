<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<h1>List of gash cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.getName()}"/></td>
        </tr>
    </c:forEach>
</table>

<p><a href="${pageContext.request.contextPath}/cars/create">Create additional car</a></p>
<p><a href="${pageContext.request.contextPath}/drivers/create">Create additional driver</a></p>

<body>

</body>
</html>
