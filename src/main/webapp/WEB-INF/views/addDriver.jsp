<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Registration Driver</title>
</head>
<body>
    <h1>Please, fill the fields about new driver</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Name <input type="text" name="name" required><br>
        Licence Number <input type="text" name="licence" required><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
