<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Car creation</title>
</head>
<body>
<h2>Car creating</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car model <input type="text" name="model" required><br>
    Car manufacturer ID<input type="number" name="manufacturerId" required><br>
    <button type="submit">Create</button>
</form>
<p><a href="${pageContext.request.contextPath}/cars">Back</a></p>
</body>
</html>
