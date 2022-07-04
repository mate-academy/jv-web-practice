<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h2>Please fill the form below to create new manufacturer:</h2>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <label>
        Name <input type="text" name="name" required>
    </label><br>
    <label>
        Country
        <input type="text" name="country" checked required>
    </label><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
