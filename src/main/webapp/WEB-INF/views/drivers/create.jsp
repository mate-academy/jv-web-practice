<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Create new driver:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name"><br>
    License number <input type="text" name="license_number"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
