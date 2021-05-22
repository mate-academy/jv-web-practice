<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add manufacturer</title>
    </head>
    <body>
        <h1>Please the form below</h1>
        <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
            Manufacturer name <input type="text" name="manufacturer_name" minlength="1" required><br>
            Manufacturer country <input type="text" name="manufacturer_country" minlength="1" required><br>
            <button type="submit">Confirm</button>
        </form>
    </body>
</html>
