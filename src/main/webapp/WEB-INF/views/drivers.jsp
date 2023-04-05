<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style><%@include file="/WEB-INF/css/style.css"%></style>
<html>
<head>
    <title>All Drivers</title>
</head>
<body>
<table class="styled-table">
    <caption>Drivers</caption>
    <thead>
        <tr>
            <td>ID</td>
            <td>NAME</td>
            <td>LICENSE NUMBER</td>
            <td>DELETE</td>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}"/></td>
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
                <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete</a></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<h2>Add driver</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input class="text-field_input" type="text" name="name"><br>
    License Number <input class="text-field_input" type="text" name="license_number"><br>
    <button class="button-confirm" type="submit">Confirm</button>
</form>
</body>
</html>
