<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Uber Alles Service</title>
</head>
<body>
<h1>Welcome to "Uber Alles" taxi service</h1>
<br>
<h2>Add a driver</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <tr>
        <td>Name <input type = "text" name = "name"></td>
        <td>License number <input type="text" name="licenseNumber"></td>
        <td><button TYPE="submit">Create driver</button></td>
    </tr>
</form>
<br>
<h2>Create a manufacturer</h2>
<form method="get" action="${pageContext.request.contextPath}/manufacturers/add">
    <tr>
        <td>Name <input type = "text" name = "name"></td>
        <td>Country <input type="text" name="country"></td>
        <td><button TYPE="submit">Create manufacturer</button></td>
    </tr>
</form>
<br>
<h2>Create a car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <tr>
        <td>Manufacturer <input type = "number" name = "manufacturerId"></td>
        <td>Model <input type="text" name="model"></td>
        <td><button TYPE="submit">Create car</button></td>
    </tr>
</form>
<br>
<h2>Add driver to a car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <tr>
        <td>Driver <input type = "number" name = "driver_id"></td>
        <td>Car <input type="number" name="car_id"></td>
        <td><button TYPE="submit">Add driver</button></td>
    </tr>
</form>
<br>
<h2>Display all drivers</h2>
<form method="get" action="${pageContext.request.contextPath}/drivers">
    <button TYPE="submit">Display drivers</button>
</form>
<br>
<h2>Display all manufacturers</h2>
<form method="get" action="${pageContext.request.contextPath}/manufacturers">
    <button TYPE="submit">Display manufacturers</button>
</form>
<br>
<h2>Display all cars</h2>
<form method="get" action="${pageContext.request.contextPath}/cars">
    <button TYPE="submit">Display cars</button>
</form>
</body>
</html>
