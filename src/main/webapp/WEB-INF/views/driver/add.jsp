<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creat Driver</title>
</head>
<body>
<h1>Please create driver</h1>
<form method="post" action="${pageContext.request.contextPath}/driver/add">
    Name <input type="text" name="name"><br>
    License Number <input type="text" name="license_number"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
