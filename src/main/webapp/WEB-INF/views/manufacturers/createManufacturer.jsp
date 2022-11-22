<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Manufacturer</title>
</head>
<body>
<div style="text-align: center; color: blue">
    <h1>
        Super form for create a Manufacturer!
    </h1>
</div>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name: <input type="text" name="name"><br>
    Country: <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>