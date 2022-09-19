<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<h1>Fill the form to create new car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Car's model <input type="text" name="model"><br/><br/>
    Car's manufacturer <input type="text" name="manufacturer_id"><br/><br/>
    <button type="submit">Create car</button>
</form>
</body>
</html>
