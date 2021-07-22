<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to DB</title>
</head>
<body>
    <h1>Create new driver</h1>
        <form method="post" action="${pageContext.request.contextPath}/drivers/add">
            User_name <input type="text" name="name"><br>
            License_number <input type="text" name="licenseNumber"><br>
            <button type="  submit">Confirm</button>
        </form>
</body>
</html>
