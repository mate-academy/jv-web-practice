<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add new manufacturer</title>
</head>
<body>
    <h1>Please fill the form below</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
        Name <input type="text" name="name"><br>
        Country <input type="text" name="country"><br>
        <button type="submit">Confirm</button>
    </form>
    <br>
    <a href="${pageContext.request.contextPath}/">Back to main page</a>
</body>
</html>
