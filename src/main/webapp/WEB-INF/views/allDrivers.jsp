<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<h1>All drivers</h1>
<form method="get" action="${pageContext.request.contextPath}/drivers/delete" id="delete" name="form">
    <select size="3" form="delete" id="select" name="id">
        <c:forEach items="${drivers}" var="driver">
            <option value="${driver.id}"/>${driver.id} ${ driver.name} ${driver.licenseNumber}</option>
        </c:forEach>
    </select>
    <button type="submit">Delete</button>
</form>
<a href="${pageContext.request.contextPath}/index">Main</a>
<a href="${pageContext.request.contextPath}/drivers/create">Add driver</a>
</body>
</html>
