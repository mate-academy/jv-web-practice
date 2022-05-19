<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Manufacturer</title>
</head>
<body>
<h1>Fill all of the fields below</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/createManufacturerForm">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
