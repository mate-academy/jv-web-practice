<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Create new driver</title>
    </head>
    <body>
        <h1>Enter parameters and confirm to create a record of a new driver:</h1>
        <form action="${pageContext.request.contextPath}/drivers/add" method="post">
            Name: <input type="text" name="name" maxlength="255" required><br><br>
            License Number: <input type="text" name="license_number" maxlength="255" required><br><br>
            <button type="submit">Confirm</button>
        </form>
    </body>
</html>
