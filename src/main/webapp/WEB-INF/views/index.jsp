<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<h2>List of:</h2>
<form action="cars/cars">
    <input type="submit" value="Cars" />
</form>
<form action="drivers/drivers">
    <input type="submit" value="Drivers" />
</form>
<form action="manufacturers/manufacturers">
    <input type="submit" value="Manufacturers" />
</form>

<h2>Create:</h2>
<form action="cars/create">
    <input type="submit" value="Car" />
</form>
<form action="drivers/create">
    <input type="submit" value="Driver" />
</form>
<form action="manufacturers/create">
    <input type="submit" value="Manufacturer" />
</form>

<h2>Bound:</h2>
<form action="drivers/add">
    <input type="submit" value="Driver To Car" />
</form>

</body>
</html>
