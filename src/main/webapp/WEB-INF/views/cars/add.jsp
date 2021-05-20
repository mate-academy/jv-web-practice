<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/index">Home</a>
<h2>Add car to DB:</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <label for="model">Model: </label><br>
    <input type="text" id="model" name="model" required><br><br>
    <label for="manufacturer">Choose a manufacturer:</label><br>
    <select id="manufacturer" name="manufacturerID" required>
        <c:forEach items="${manufacturersList}" var="manufacturer">
            <option value="${manufacturer.id}">${manufacturer.name}</option>
        </c:forEach>
    </select><br><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
