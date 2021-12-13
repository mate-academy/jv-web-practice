<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/manufacturers/add" method="post">
    Create new manufacturer
    <ul>
        <li>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" />
        </li>
        <li>
            <label for="country">Country:</label>
            <input type="text" id="country" name="country" />
        </li>
    </ul>
    <input type="submit">
</form>
</body>
</html>
