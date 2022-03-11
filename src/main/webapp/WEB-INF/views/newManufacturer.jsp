<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>Create a new Manufacturer</h3>
    <p>Fill in forms below:</p>
    <form method="post" action="${pageContext.request.contextPath}/manufacturer/add">
        Manufacturer's name <input type="text" name="name"><br>
        Manufacturer's country <input type="text" name="country"><br>
        <button type="submit">Confirm</button>
    </form>
    <a href="${pageContext.request.contextPath}/index">return to main page</a>
</body>
</html>
