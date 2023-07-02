<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver Name <br><input type="text" name="name"><br>
    License Number <br><input type="text" name="license_number"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
