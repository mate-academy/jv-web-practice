<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style><%@include file="/WEB-INF/css/style.css"%></style>
<html>
<head>
    <title>All Manufacturers</title>
</head>
<body>
<table class="styled-table">
    <caption>Manufacturers</caption>
    <thead>
        <tr>
            <td>ID</td>
            <td>NAME</td>
            <td>COUNTRY</td>
            <td>DELETE</td>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <tr>
                <td><c:out value="${manufacturer.id}"/></td>
                <td><c:out value="${manufacturer.name}"/></td>
                <td><c:out value="${manufacturer.country}"/></td>
                <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">delete</a></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<h2>Add manufacturer</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input class="text-field_input" type="text" name="name"><br>
    Country <input class="text-field_input" type="text" name="country"><br>
    <button class="button-confirm" type="submit">Confirm</button>
</form>
</body>
</html>
