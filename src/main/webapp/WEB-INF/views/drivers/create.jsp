<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create driver</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/drivers/create">
        name <input type="text" name="name"><br>
        license number <input type="text" name="license_number"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
