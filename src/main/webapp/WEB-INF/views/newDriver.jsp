<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
    <h3>Create a new Driver</h3>
    <p>Fill in forms below:</p>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Driver's name <input type="text" name="name"><br>
        Driver's license <input type="text" name="licenseDriver"><br>
        <button type="submit">Confirm</button>
    </form>
    <a href="${pageContext.request.contextPath}/index">return to main page</a>
</body>
</html>
