<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Drivers</title>
    </head>
    <body>
        <h2>Add a driver</h2>
        <p>Please input the form bellow and press the Submit button</p>
        <form method="post">
            <label for="name">Full name:</label><br>
            <input type="text" id="name" name="driverName" required><br>
            <label for="licenseNumber">License number:</label><br>
            <input type="text" id="licenseNumber" name="licenseNumber" required><br><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
