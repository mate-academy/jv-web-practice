<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h2>Create new driver:</h2>
<table>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Name <input required type="text" name="name">,<br>
        License number <input required type="text" name="license_number">,<br>
        <button type="submit">Confirm</button>
    </form>
</table>
</body>
</html>
