<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List of Driver</h1>
<table>
    <tr>
        <td>Id</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}">id</c:out> </td>
            <td><c:out value="${driver.name}">name</c:out> </td>
            <td><c:out value="${driver.licenseNumber}">licanseNumber</c:out> </td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete driver</a> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
