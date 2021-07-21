<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver registration</title>
</head>
<body>
<h2><a href="/index">Main page</a></h2>
<h1>Please fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/register">
    Name <input type="text" required name="name"><br>
    License Number <input type="text" required name="license_number"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
