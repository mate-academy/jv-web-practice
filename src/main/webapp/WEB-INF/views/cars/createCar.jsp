<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new car</title>
</head>
<body>
<div style="align-content: center">
    <h3>Fill the form:</h3>
    <form method="POST" action="${pageContext.request.contextPath}/cars/create">
        <label for="model">Model:</label><br>
        <input type="text" id="model" name="model" required><br>
        <label for="manufacturer_id">Manufacturer ID:</label><br>
        <input type="number" id="manufacturer_id" name="manufacturer_id" required><br>
        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>
