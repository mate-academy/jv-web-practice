<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<h1>Please fill in all clear fields!</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/createManufacturer">
    Name <input type="text" name="manufacturer_name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
