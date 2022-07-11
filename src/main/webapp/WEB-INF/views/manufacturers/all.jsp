<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<h1>List of manufacturers</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Country</td>
        <td>Action</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
        <td><c:out value="${manufacturer.getId()}" /></td>
        <td><c:out value="${manufacturer.getName()}" /></td>
        <td><c:out value="${manufacturer.getCountry()}" /></td>
            <td>
                <a href="${pageContext.request.contextPath}/manufacturers/delete?manufacturer_id=${manufacturer.getId()}">Delete this manufacturer</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
