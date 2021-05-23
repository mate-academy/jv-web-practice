<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Create Driver</title>
    </head>
    <body>
        <h1>Enter data to create a driver</h1>
        <form method="post" action="${pageContext.request.contextPath}/drivers/add">
            Driver name <input type="text" name="driver_name" required>
            Driver license number <input type="text" name="driver_license_number" required>
            <button type="submit">Create</button>
        </form>
    </body>
</html>
