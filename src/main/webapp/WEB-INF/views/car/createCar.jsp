
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<h3>Create new car</h3>
<form method="post" action="${pageContext.request.contextPath}/car">
    <label>
        Model
        <input type="text" name="model">
    </label><br>
    <label>
        Manufacturer id
        <input type="text" name="manufacturerId">
    </label><br>
    <button type="submit">Create</button>
</form>
</body>
</html>

