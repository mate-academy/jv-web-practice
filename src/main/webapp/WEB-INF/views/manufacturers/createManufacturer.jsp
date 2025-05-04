<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new manufacturer</title>
</head>
<body>
<div style="align-content: center">
    <h3>Fill the form:</h3>
    <form method="POST" action="${pageContext.request.contextPath}/manufacturers/create">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" required><br>
        <label for="country">Country:</label><br>
        <input type="text" id="country" name="country" required><br>
        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>
