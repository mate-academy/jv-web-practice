<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Manufacturers</title>
</head>
<body>
<h1>Add manufacturer</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers_add">
    ManufacturerName <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
