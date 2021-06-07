<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<h1>List of drivers : </h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>LICENSE NUMBER</th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td align="center"><c:out value="${driver.getId()}"/></td>
            <td align="center"><c:out value="${driver.getName()}"/></td>
            <td align="center"><c:out value="${driver.getLicenseNumber()}"/></td>
            <td>
                <a href=${pageContext.request.contextPath}"/drivers/delete?id=
            ${driver.getId()}"><button type="submit">DELETE</button></a>
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
