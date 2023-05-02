<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Manufacturer</title>
</head>
<body>
    <h1>Add Manufacturer</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
        Name <input type="text" name="name"><br>
        Country <input type="text" name="country"><br>
        <button type="submit">Add</button>
    </form>
</body>
</html>
