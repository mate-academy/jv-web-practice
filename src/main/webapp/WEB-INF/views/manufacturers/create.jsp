<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Manufacturer</title>
</head>
<body>
    <h1>Create manufacturer form</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
        Name <input type="text" name="name"><br>
        Country <input type="text" name="country"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
