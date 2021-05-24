<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Manufacturer</title>
</head>
    <body>
        <h1>Please fill in the form</h1>
        <form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
            Manufacturer name <input type="text" name="manufacturer_name" required><br>
            Manufacturer country<input type="text" name="manufacturer_country" required><br>
            <button type="submit">Confirm</button>
        </form>
        <a href="${pageContext.request.contextPath}/manufacturers">See all manufacturers</a>
        <a href="${pageContext.request.contextPath}/">To main page</a>
    </body>
</html>
