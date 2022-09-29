<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Manufacturer</title>
</head>
<body>
<h1>Please fill the form below to add Manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer Name <input type="text" name="name"><br>
    Manufacturer Country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>