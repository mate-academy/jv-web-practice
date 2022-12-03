<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<br>
<a href = "${pageContext.request.contextPath}/index">Go to Main Page</a>
<h2>Fill the fields for create manufacturer</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    <div>
        Name
        <input type="text" name="name" placeholder="Input name">
    </div>
    <br>
    <div>
        Country
        <input type="text" name="country" placeholder="Input country">
    </div>
    <br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
