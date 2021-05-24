<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<body>
<h1>List of manufacturers : </h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>COUNTRY</th>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td align="center"><c:out value="${manufacturer.getId()}"/></td>
            <td align="center"><c:out value="${manufacturer.getName()}"/></td>
            <td align="center"><c:out value="${manufacturer.getCountry()}"/></td>
            <td>
                <a href=${pageContext.request.contextPath}"/manufacturers/delete?id=
            ${manufacturer.getId()}"><button type="submit">DELETE</button></a>
            </td>
        </tr>
    </c:forEach>
</table>
<p>
    <a href="${pageContext.request.contextPath}/">
        <button type="submit">MAIN MENU</button>
    </a>
</p>
</body>
</html>
