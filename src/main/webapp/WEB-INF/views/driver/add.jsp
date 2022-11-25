<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
    <h1>Enter name and drivers license</h1>
    <form method="post" action="${pageContext.request.contextPath}/driver/add">
        Name <input type="text" name="name">
        License <input type = "number" name="license_id">
        <button type="submit">Save</button>
    </form>
</body>
</html>
