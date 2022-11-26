<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Create car</h1>
<h4 style="color: green">${message}</h4>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    <label>
        <input type="text" name="car_model" placeholder="Car model">
        <input type="number" name="manufacturer_id" placeholder="Manufacturer id">
    </label>
    <button type="submit">Create</button>
</form>
</body>
</html>
