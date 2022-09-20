<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Manufacturer</title>
</head>
<body>
<h1>Enter a new manufacturer parameters</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturer/createManufacturer">
    Name <input type="text" name="name">
    Country <input type="text" name="country">
    <button type="submit">Send</button>
</form>
</body>
</html>
