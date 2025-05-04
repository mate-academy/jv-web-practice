
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label for="name">Driver name:</label><br>
    <input type="text" id="name" name="name"><br>
    <label for="License number">License number:</label><br>
    <input type="text" id="License number" name="License number">
    <input type="submit" value="Add driver">
</form>
</body>
</html>
