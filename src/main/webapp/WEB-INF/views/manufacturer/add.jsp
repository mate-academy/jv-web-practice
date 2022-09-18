<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<div style="text-align: center;">
    <h2>Fill out the new manufacturer information</h2>
    <form method="post" action="${pageContext.request.contextPath}/manufacturer/add">
        Manufacturer's name <label>
        <input type="text" name="name">
    </label><br>
        Manufacturer's country <label>
        <input type="text" name="country">
    </label><br>
        <button type="submit">Confirm</button>
    </form>
</div>
<a href="${pageContext.request.contextPath}/"><<< Back to the main page</a>
</body>
</html>
