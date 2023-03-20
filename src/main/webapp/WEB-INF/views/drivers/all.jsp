<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<h2><a href="/index">Go to index</a></h2>
<h1>All drivers here</h1>
<table border="1" style="font-size: 25px">
    <tr>
        <td>Id</td>
        <td>Model</td>
        <td>License Number</td>
        <td>Delete</td>

    </tr>
    <c:forEach items="${drivers}" var="driver">
    <tr>
        <td><c:out value="${driver.id}" /></td>
        <td><c:out value="${driver.name}" /></td>
        <td><c:out value="${driver.licenseNumber}" /></td>
        <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}"> Click to delete this driver </a></td>
    </tr>
    </c:forEach>
</table> <br>
<h2><a href="/drivers/create">Create driver</a></h2>
</body>
</html>
