<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturer registration</title>
</head>
<body>
<h2><a href="/index">Main page</a></h2>
<h1>Please fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/register">
    Name <input type="text" required name="name"><br>
    Country <input type="text" required name="country"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
