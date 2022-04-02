<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a manufacturer</title>
</head>
<body>
    <h1>Add manufacturer to database</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturer/create">
    Manufacturer name <input type="text" name="name"><br>
    Manufacturer country <input type="text" name="country"><br>
    <button type="submit">Add</button>
</form>
    <form method="get" action="${ageContext.request.contextPath}/">
        <button type="submit">Back to home</button>
    </form>
</body>
</html>
