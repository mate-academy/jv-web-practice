<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding manufacturer settings</title>
</head>
<body>
<h1>Please choose a manufacturer:</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/addManufacturer">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
