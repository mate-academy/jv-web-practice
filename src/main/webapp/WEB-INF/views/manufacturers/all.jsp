<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display and delete</title>
</head>
<body>
<h1>List of manufacturers</h1>
<table>
    <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Country</th>
    </tr>
    <c:forEach items="${manufacturer}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
                delete manufacturer</a> </td>
        </tr>
    </c:forEach>
</table>
<form>
    <button type="submit" formaction="/index">Home</button>
</form>

</body>
</html>
