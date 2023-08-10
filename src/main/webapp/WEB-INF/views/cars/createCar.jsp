<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Please fill out the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Manufacturer Id<input type="text" name="id"><br>
    Car model<input type="text" name="model"><br>
    <button type="submit">Create car</button>

</form>
</body>
</html>
