<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all manufacturers</title>
</head>
<body>
<h1>All manufacturers: </h1>
<form method="get" action="${pageContext.request.contextPath}/manufacturers/delete" id="delete" name="form">
    <select size="3" form="delete" id="select" name="id">
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.id}"/>${manufacturer.id} ${ manufacturer.name} ${ manufacturer.country}</option>
        </c:forEach>
    </select>
    <button type="submit">Delete</button>
</form>
<a href="${pageContext.request.contextPath}/index">Main</a>
<a href="${pageContext.request.contextPath}/manufacturers/create">Create manufacturer</a>
</body>
</html>