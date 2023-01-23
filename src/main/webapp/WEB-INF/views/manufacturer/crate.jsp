<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a manufacturer</title>
</head>
<body>
<form action="<c:url value="/index"/>">
    <input type="submit" value=" <- To main page " />
</form>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <label for="name"> Name:</label><br>
    <input type="text" id="name" name="name" required><br>
    <label for="country">Country:</label><br>
    <input type="text" id="country" name="country" required><br>
    <button type="submit">Create</button>
</form>
</form>
</body>
</html>
