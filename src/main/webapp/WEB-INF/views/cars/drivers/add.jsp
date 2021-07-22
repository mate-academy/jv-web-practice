<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Adding driver to car</title>
    <style><%@include file="/WEB-INF/style/main.css"%></style>
</head>
<body>
<div class="content">
    <h1>Fill out the form:</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        <p>Driver id</p>
        <input type="number" name="driver_id">
        <p>Car id</p>
        <input type="number" name="car_id">
        <br>
        <button type="submit">Add</button>
    </form>
</div>
</body>
</html>