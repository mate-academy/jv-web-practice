
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new manufacturer</title>
</head>
<body>
<h1>Add new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer name <input type="text" name="manufacturerName"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Save</button>
</form>
</body>
</html>
