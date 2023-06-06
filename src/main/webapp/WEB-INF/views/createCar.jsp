<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>New car</title>
</head>
<body>
<h2>Adding new car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model: <input type="text" name="model" required><br>
    Manufacturer:
    <select name="manufacturer_id">
        <c:forEach items="${manufacturersList}" var="manufacturer">
            <option value="${manufacturer.id}">
                ${manufacturer.name}
            </option>
        </c:forEach>
    </select>
    <br>
    <button type="submit">Add</button>
</form>
</body>
</html>
