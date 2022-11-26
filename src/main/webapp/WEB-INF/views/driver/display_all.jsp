<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all drivers</title>
</head>
<body>
<h1>Display all drivers</h1>
<table>
    <tr>
        <td align="center">ID</td>
        <td align="center">NAME</td>
        <td align="center">LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td align="center"><c:out value="${driver.id}"/></td>
            <td align="center"><c:out value="${driver.name}"/></td>
            <td align="center"><c:out value="${driver.licenseNumber}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
