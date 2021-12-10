<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Create the car</title>
    </head>
    <body>
        <h1>Enter car statements below:</h1>
        <form method="post" action="${pageContext.request.contextPath}/cars/create">
            Model<label>
            <input type="text" name="model">
        </label><br>
            Manufacturer id<label>
            <input type="number" name = "manufacturer_id">
        </label><br>
            <button type="submit">Create</button>
        </form>
    </body>
</html>