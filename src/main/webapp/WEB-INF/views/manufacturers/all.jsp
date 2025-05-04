<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
</head>
<style>
    body {
        font-family: Helvetica, sans-serif;
        font-size: 12px;
        line-height: 16px;
    }
</style>
<body>
<h2>List of all manufacturers</h2>
<table border="1px">
    <tr>
        <td width="20px">Id</td>
        <td width="100">Name</td>
        <td width="100px">Country</td>
        <td width="25px">Delete</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td>
                <a href="${pageContext.request.contextPath}
                /manufacturers/delete?id=${manufacturer.id}">
                    <input type="button" name="delete" value="DELETE"></a>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="${pageContext.request.contextPath}/manufacturers/add">
    <input type="button" name="add" value="ADD MANUFACTURER"></a>
<br><br>
<a href="${pageContext.request.contextPath}/index">
    <input type="button" name="index" value="GO TO INDEX PAGE"></a>
</body>
</html>
