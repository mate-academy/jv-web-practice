<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add new driver</title>
</head>
<body>
    <h1>Please fill the form below</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Name <input type="text" name="name"><br>
        License number <input type="text" name="license_number"><br>
        <button type="submit">Confirm</button>
    </form>
    <br>
    <a href="${pageContext.request.contextPath}/">Back to main page</a>
</body>
</html>
