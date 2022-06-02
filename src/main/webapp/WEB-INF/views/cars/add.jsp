<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<section>
    <h2>Add driver to car: </h2>
    <form method="post" action="/cars/add_to_car">
        Id driver: <input type="number" name="driver_id"><br>
        Id car: <input type="number" name="car_id"><br>
        <button type="submit">add</button>
    </form>
    <br>
    <div>
        <a href="/">home</a>
    </div>
</section>

</body>
</html>
