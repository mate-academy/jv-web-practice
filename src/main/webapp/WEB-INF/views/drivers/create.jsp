
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<a href = "${pageContext.request.contextPath}/index">Go to Main Page</a>
<br>
<h2>Fill the fields for create driver</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    <div>
        Name
        <input type="text" name="name" placeholder="Input name">
    </div>
    <br>
    <div>
        Number of Lisence
        <input type="text" name="licenseNumber" placeholder="Input number of lisence">
    </div>
    <br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
