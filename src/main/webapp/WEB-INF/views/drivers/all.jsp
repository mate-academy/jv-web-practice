<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<style>
    body {
        font-family: Helvetica, sans-serif;
        font-size: 12px;
        line-height: 16px;
    }
</style>
<body>
<h2>List of all drivers</h2>
<table border="1px">
    <tr>
        <td width="20px">Id</td>
        <td width="150">Name</td>
        <td width="100px">License</td>
        <td width="25px">Delete</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                    <input type="button" name="delete" value="DELETE"></a>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="${pageContext.request.contextPath}/drivers/add">
    <input type="button" name="add" value="ADD DRIVER"></a>
<br><br>
<a href="${pageContext.request.contextPath}/index">
    <input type="button" name="index" value="GO TO INDEX PAGE"></a>
</body>
</html>
