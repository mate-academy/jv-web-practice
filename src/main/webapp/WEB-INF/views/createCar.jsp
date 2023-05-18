<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Create Car</title>
    </head>
    <body>
        <form method="post" action="/createCar">
            Model <input type="text" name="model"><br>
            Manufacturer id <input type="text" name="manufacturerId"><br>
            <button type="submit">Create</button>
        </form>
    </body>
</html>
