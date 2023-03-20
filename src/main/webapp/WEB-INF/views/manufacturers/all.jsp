<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2><a href="/index">Go to index</a></h2>
<h1>All manufacturers here</h1>
<table border="1" style="font-size: 25px">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Country</td>
        <td>Delete</td>

    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}"> Click to delete this manufacturer </a></td>
        </tr>
    </c:forEach>
</table><br>
<h2><a href="/manufacturers/create">Create manufacturer</a></h2>
</body>
</html>
