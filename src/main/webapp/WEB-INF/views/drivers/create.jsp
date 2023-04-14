<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Creating new driver</h1>
<p>Fill out form below</p>

<form method="post" action="${pageContext.request.contextPath}/drivers/create">
Name <input type="text" name="name"><br>
License number <input type="text" name="license_number"><br>
<button type="submit">Confirm</button>
</form>
<form><button type="submit" formaction="/index">Home</button></form>
</body>
</html>
