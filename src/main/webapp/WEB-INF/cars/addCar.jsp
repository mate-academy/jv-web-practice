<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>Please, complete the form below and choose manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model" required="required">
    Manufacturer: <select name="manufacturer_id">
    <c:forEach items="${manufacturers}" var="manufacturer">
        <option value="${manufacturer.id}">${manufacturer.name}</option>
    </c:forEach>
</select>
    <button type="submit">Add car</button>
</form>
<br/>
<a href="${pageContext.request.contextPath}/main">Back to main page</a>
</body>
</html>
