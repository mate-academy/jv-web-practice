<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create manufacturer</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
        name <input type="text" name="name"><br>
        country <input type="text" name="country"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
