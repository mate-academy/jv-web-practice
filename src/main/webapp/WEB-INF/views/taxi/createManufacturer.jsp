<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a manufacturer</title>
</head>
<body>
<h1>Please fill up the form bellow</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer's name <input type="text" name="manufacturerName"><br>
    Manufacturer's country <input type="text" name="manufacturerCountry"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
