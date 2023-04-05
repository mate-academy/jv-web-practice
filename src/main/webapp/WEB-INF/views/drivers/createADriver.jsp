<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a driver</title>
</head>
<body>
<h1>Insert data to create a driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create-a-driver">
    Enter driver name <input type="text" name="name"><br>
    Enter driver license number <input type="text" name="license_number"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
