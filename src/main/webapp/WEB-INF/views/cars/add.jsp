<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Creating a car</title>
    <style><%@include file="/WEB-INF/style/main.css"%></style>
</head>
<body>
<div class="content">
    <h1>Fill out the form:</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        <p>Model</p>
        <input type="text" name="model">
        <p>Manufacturer id</p>
        <input type="number" name="manufacturer_id">
        <br>
        <button type="submit">Create</button>
    </form>
</div>
</body>
</html>
