<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<h1>Please enter your data</h1>

<form method="post" action="${pageContext.request.contextPath}/driver/create">
        Driver name <input type="text" name="Driver name"><br>
        License Number <input type="tetx" name="License Number"><br>
<button type="submit">Confirm</button>
</form>
</body>
</html>
