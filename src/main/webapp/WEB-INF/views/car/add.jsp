<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
    <h1> Create car</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/create">
        Model <input type="text" name="model">
        Manufacturer id <input type="number" name="manufacture_id">
        <button type="submit">Save</button>
    </form>
</body>
</html>
