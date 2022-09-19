<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<div style="text-align: center;">
    <h2>Fill out the new car information</h2>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        Car's model <label>
        <input type="text" name="model">
    </label><br>
        ID of the car manufacturer <label>
        <input type="text" name="manufacturer_id">
    </label><br>
        <button type="submit">Confirm</button>
    </form>
</div>
<a href="${pageContext.request.contextPath}/"><<< Back to the main page</a>
</body>
</html>
