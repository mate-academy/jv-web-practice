<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
    <h1>Create driver</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/create">
        Name <label>
        <input type="text" name="driver_name" value="">
    </label>
        Licence number <label>
        <input type="text" name="licence_number" value="">
    </label>
        <button type="submit">Create a driver</button>
    </form>
</body>
</html>
