<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Create new car</title>
    </head>
    <body>
        <h1>Enter parameters and confirm to create a record of a new car:</h1>
        <form action="${pageContext.request.contextPath}/cars/add" method="post">
            Model: <input type="text" name="model" maxlength="255" required><br><br>
            Manufacturer ID: <input type="number" name="manufacturer_id" required><br><br>
            <button type="submit">Confirm</button>
        </form>
    </body>
</html>
