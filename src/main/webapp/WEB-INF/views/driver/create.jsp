<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a driver</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/driver/add">
        Driver name <input type="text" name="name"><br>
        License number <input type="text" name="licenseNumber"><br>
        <button type="submit">Create</button>
    </form>
</body>
</html>
