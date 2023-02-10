<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Adding driver to car</title>
</head>
<body>
<div>
    <h1>Add driver to car:</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        <p>Driver id</p>
        <label>
            <input type="number" name="driver_id">
        </label>
        <p>Car id</p>
        <label>
            <input type="number" name="car_id">
        </label>
        <br>
        <button type="submit">Add</button>
    </form>
</div>
</body>
</html>
