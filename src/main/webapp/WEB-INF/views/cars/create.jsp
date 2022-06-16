<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Car Creation</title>
</head>
<body>
<h1>Fill The Form Below:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br>
    Manufacturer
    <select name="manufacturer">
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.id}">${manufacturer.name}</option>
        </c:forEach>
    </select><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
