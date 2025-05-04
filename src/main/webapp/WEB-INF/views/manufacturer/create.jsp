<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
    <h1>Create manufacturer</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
      Name <input type="text" name="manufacturer_name" value="">
        Manufacturer Country <input type="text" name="manufacturer_country" value="">
        <button type="submit">Create a manufacturer</button>
    </form>
</body>
</html>
