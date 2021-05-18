<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Create Manufacturer</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturer/create">
        Name <input type="text" name="name" required><br>
        Country <input type="text" name="country" required><br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>