<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/drivers/create">
        Username <input required="required" type = "text" name = "name"><br>
        License number <input required="required" type = "text" name = "license_number"><br>
        <button type="submit">Create</button>
    </form>
</body>
</html>
