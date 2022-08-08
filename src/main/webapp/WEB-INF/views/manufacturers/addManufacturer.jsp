<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a manufacturer</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<a href="${pageContext.request.contextPath}/">Go to Action menu</a>
<h2>To add a manufacturer, please fill out the form below</h2>
<form action="${pageContext.request.contextPath}/manufacturers/add" method="post">
    <label>
        Manufacturer name:
        <input type="text" name="name" required>
    </label><br><br>
    <label>
        Producing country:
        <input type="text" name="country" required>
    </label><br><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>