<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Registration manufacturer</title>
</head>
<body>
    <h1>Please, fill the fields about new manufacturer</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
        Name <input type="text" name="name" required><br>
        Country <input type="text" name="country" required><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
