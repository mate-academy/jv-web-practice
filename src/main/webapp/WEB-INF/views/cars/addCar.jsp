<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
    <h1>Fill out the form to add a new driver</h1>
    <form method="post", action=${pageContext.request.contextPath}/cars/add>
        Model <input type="text" name="model"><br>
        Manufacturer ID <input type="number" name="manufacturer_id"><br>
        <button type="submit">CREATE</button>
    </form>
</body>
</html>
