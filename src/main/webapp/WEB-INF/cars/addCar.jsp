<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>Please form below and choose manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model" required="required">
    Manufacturer: <select name="manufacturer">
    <c:forEach items="${manufacturers}" var="manufacturer">
        <option value="${manufacturer.getId()}">${manufacturer.getName()}</option>
    </c:forEach>
</select>
    <button type="submit">Add car</button>
</form>
<br/>
<a href="${pageContext.request.contextPath}/main">Back to main page</a>
</body>
</html>
