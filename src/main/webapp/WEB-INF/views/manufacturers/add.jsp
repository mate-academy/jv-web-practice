<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create new Manufacturer</title>
</head>
<body>
    <h1>Create new manufacturer</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name"><br>
        <label for="country">Country:</label><br>
        <input type="text" id="country" name="country"><br>
        <button type="submit">SUBMIT</button>
        <button type="reset">RESET</button>
    </form>
    <br><a href="${pageContext.request.contextPath}/index">Back to start page</a>
</body>
</html>
