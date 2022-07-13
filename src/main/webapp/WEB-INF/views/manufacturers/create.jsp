<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create new manufacturer</title>
</head>
<body>
    <h1>create new manufacturer</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
        Manufacturer name <input type="text" name="name"><br>
        Manufacturer country <input type="text" name="country"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
<footer>
    <a href="${pageContext.request.contextPath}/index">To manufacturers</a>
</footer>
</html>
