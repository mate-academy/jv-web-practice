<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Fill out this form</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    Manufacturer Id <input type="text" name="manufacturerId"><br>
    <button type="submit">Add car</button>
</form>
</body>
</html>
