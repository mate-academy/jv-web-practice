<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create new manufacturer</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<h1>Create new manufacturer</h1>
<form action="${pageContext.request.contextPath}/manufacturers/add" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br>
    <label for="country">Country:</label>
    <input type="text" id="country" name="country" required><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
