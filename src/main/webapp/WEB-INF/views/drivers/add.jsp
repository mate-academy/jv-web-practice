<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ADDING DRIVER TO BD</title>
</head>
<body>
<h1>CREATE DRIVER:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name <input type="text" name="name"><br>
    Driver license <input type="text" name="licenseNumber"><br>
    <button type="submit">CONFIRM</button>
</form>
<tr>
    <td><a href="${pageContext.request.contextPath}/index">BACK TO THE MAIN PAGE</a></td>
</tr>
</body>
</html>
