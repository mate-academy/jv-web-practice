<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Update manufacturer</title>
</head>
<body>
<h1>Update manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/update">
    <label>Model name</label>
    <input type="hidden" name="id" value="${id}">
    <input type="text" name="name" value="${name}">
    <label>Country</label>
    <input type="text" name="country" value="${country}">
    <button type="submit">Update manufacturer</button>
</form>
</body>
</html>