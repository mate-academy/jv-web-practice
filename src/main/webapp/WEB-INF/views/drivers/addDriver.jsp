<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Please fill the fields below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name <input type="text" name="name" required="required">
    License Number <input type="text" name="license_number" required="required">
    <button type="submit">Add driver</button>
</form>
</body>
</html>
