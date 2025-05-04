<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<h1>Fill all of the fields below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name <input type="text" name="name"><br>
    License Number<input type="text" name="license_number"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
