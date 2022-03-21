<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Create new car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model:<input type="text" name="model"><br>
    Manufacturer id:<input type="text" name="manufacturerId"><br>
    <button type="submit">Create</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">Back to menu</a></p>
</body>
</html>
