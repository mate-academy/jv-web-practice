<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<h1>Create a car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    <label for="model">model</label><br>
    <input type="text" id="model" name="model" required><br>
    <label for="manufacturer">manufacturer</label>
    <input type="text" id="manufacturer" name="manufacturer_id" required><br>
    <button type="submit">create a car</button>
</form>
<form method="get"
      action="${pageContext.request.contextPath}/index">
    <button type="submit">
        back to service
    </button>
</form>
</body>
</html>
