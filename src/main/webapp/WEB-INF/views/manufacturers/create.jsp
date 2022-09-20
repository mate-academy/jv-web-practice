<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a manufacturer</title>
</head>
<body>
    <h1>Add manufacturer to database</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Manufacturer name <input type="text" name="manufacturer_name"><br>
    Manufacturer country <input type="text" name="manufacturer_country"><br>
    <button type="submit">Add</button>
</form>
    <form method="get" action="${pageContext.request.contextPath}/index">
        <button type="submit">Back to home</button>
    </form>
</body>
</html>
