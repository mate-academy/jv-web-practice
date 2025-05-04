<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h4>Fill the form to add driver</h4>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name : <input type="text" name="name"><br>
    License number : <input type="text" name="license_number"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
