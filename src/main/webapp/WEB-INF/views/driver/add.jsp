<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<div style="text-align: center;">
    <h2>Fill out the new driver information</h2>
    <form method="post" action="${pageContext.request.contextPath}/driver/add">
        Driver's name <label>
        <input type="text" name="name">
    </label><br>
        Driver's license number <label>
        <input type="text" name="license_number">
    </label><br>
        <button type="submit">Confirm</button>
    </form>
</div>
<a href="${pageContext.request.contextPath}/"><<< Back to the main page</a>
</body>
</html>
