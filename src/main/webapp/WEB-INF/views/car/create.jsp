<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new car</title>
</head>
    <body>
        <form method="post" action="${pageContext.request.contextPath}/car/add">
            Model <input type="text" name="model"><br>
            Manufacturer id <input type="number" name="manufacturer_id"><br>
            <button type="submit">Create</button>
        </form>
    </body>
</html>
