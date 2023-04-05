<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating a manufacturer</title>
</head>
<body>
<h1 style="text-align:center;">Hello!</h1>
<h2 style="text-align:center;">If you want to create a new manufacturer, please fill the next form:</h2>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Manufacturer name: <input type="text" name="name"><br>
    Manufacturer country: <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>