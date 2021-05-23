<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Create Manufacturer</title>
    </head>
    <body>
        <h1>Enter data to create a manufacturer</h1>
        <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
            Manufacturer name <input type="text" name="manufacturer_name" required>
            Manufacturer country <input type="text" name="manufacturer_country" required>
            <button type="submit">Create</button>
        </form>
    </body>
</html>
