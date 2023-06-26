<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<h1>Add car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <input type="text" name="model" placeholder="Model">
    <label>Manufacturer id: </label>
    <select name="manufacturer_id">
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value=<c:out value="${manufacturer.id}"/>><c:out value="${manufacturer.name}"/></option>
        </c:forEach>
    </select>
    <button type="submit">create</button>
</form>
</body>
</html>